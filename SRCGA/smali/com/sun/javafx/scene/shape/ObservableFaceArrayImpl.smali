.class public Lcom/sun/javafx/scene/shape/ObservableFaceArrayImpl;
.super Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;
.source "ObservableFaceArrayImpl.java"

# interfaces
.implements Ljavafx/scene/shape/ObservableFaceArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/shape/ObservableFaceArrayImpl;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/shape/ObservableFaceArray;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/shape/ObservableFaceArrayImpl;
    move-object v1, p1

    .local v1, "src":Ljavafx/scene/shape/ObservableFaceArray;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;-><init>(Ljavafx/collections/ObservableIntegerArray;)V

    .line 52
    return-void
.end method

.method public varargs constructor <init>([I)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/shape/ObservableFaceArrayImpl;
    move-object v1, p1

    .local v1, "elements":[I
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;-><init>([I)V

    .line 44
    return-void
.end method
