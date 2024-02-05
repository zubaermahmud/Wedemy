import 'package:wedemy/bookmodel.dart';
import 'package:flutter/material.dart';

var categoryData = [

  {
    "icon": "images/plane.png",
    "lebel": "Travel",
  },
  {
    "icon": "images/heart.png",
    "lebel": "Romance",
  },
  {
    "icon": "images/world.png",
    "lebel": "Documentary",
  },
  {
    "icon": "images/heart.png",
    "lebel": "Love Story",
  },
];

var bookData = [
  BookModel(
      id: "1",
      title:
      "Boundraties and thi is my first book and and thi is my first book and ",
      description:
      "n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum",
      aboutAuthor: " i have written this book",
      audioLen: "20",
      author: "labib",
      coverUrl: "images/boundraries.jpg",
      rating: "4.2",
      category: "Documentary",
      numberofRating: "10,",
      price: 100,
      pages: 234,
      language: "ENG",
      bookurl:
      "https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf"),
  BookModel(
      id: "2",
      title: "Daily Stoice",
      description:
      "n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum",
      aboutAuthor: "i have written this book",
      audioLen: "20",
      author: "tasfia",
      coverUrl: "images/daily stoic.jpg",
      rating: "4.2",
      category: "Documentary",
      price: 100,
      numberofRating: "10,",
      language: "ENG",
      pages: 234,
      bookurl:
      "https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf"),
  BookModel(
      id: "3",
      title: "Give and Take",
      description:
      "n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum",
      aboutAuthor: " i have written this book",
      audioLen: "20",
      author: "Farhan",
      coverUrl: "images/You are not so smart.jpg",
      rating: "4.2",
      category: "Documentary",
      numberofRating: "10,",
      price: 100,
      language: "ENG",
      pages: 234,
      bookurl:
      "https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf"),
  BookModel(
    id: "4",
    title: "When the moon split",
    description:
    "n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum",
    aboutAuthor: "i have written this book",
    audioLen: "20",
    author: "Labib",
    coverUrl: "images/When the moon split.jpg",
    rating: "4.2",
    category: "Documentary",
    price: 100,
    pages: 234,
    language: "ENG",
    numberofRating: "10,",
    bookurl:
    "https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf",
  )
];