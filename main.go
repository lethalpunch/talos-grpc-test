package main

import (
	"context"
	"encoding/json"
	"log"
	"net/http"

	pb "sampletalos/storage"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/protobuf/types/known/emptypb"
)

type Client struct {
	StorageClient pb.StorageServiceClient
}

const (
	ADDRESS = "dns:///192.168.1.9:50000"
)

func disks(w http.ResponseWriter, r *http.Request) {
	//myjson := `{"name": "Abv"}`

	json.NewEncoder(w).Encode(getDisks())
}

func getDisks() *pb.DisksResponse {
	log.Println("Inside getDisks")
	return getDiskFromGrpc()
}

func getDiskFromGrpc() *pb.DisksResponse {
	var conn *grpc.ClientConn
	conn, err := grpc.Dial(ADDRESS, grpc.WithTransportCredentials(insecure.NewCredentials()))
	if err != nil {
		log.Println("Error in connection")
		log.Fatalf("Couldnot connect %s", err)
	}
	log.Println("Connected to host")
	defer conn.Close()

	s := pb.NewStorageServiceClient(conn)
	log.Println("Creating StorageClient")

	response, err := s.Disks(context.Background(), &emptypb.Empty{})
	if err != nil {
		log.Println("Error in getting disks")
		log.Printf("Couldnot erro %s", err)
	}
	return response
}

func main() {

	http.HandleFunc("/disks", disks)
	http.ListenAndServe(":8080", nil)
}
