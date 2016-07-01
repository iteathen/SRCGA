.class Ljavafx/collections/FXCollections$EmptyObservableSet$1;
.super Ljava/lang/Object;
.source "FXCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/collections/FXCollections$EmptyObservableSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/collections/FXCollections$EmptyObservableSet;


# direct methods
.method constructor <init>(Ljavafx/collections/FXCollections$EmptyObservableSet;)V
    .locals 4

    .prologue
    .line 1611
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableSet$1;, "Ljavafx/collections/FXCollections$EmptyObservableSet$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/collections/FXCollections$EmptyObservableSet;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/collections/FXCollections$EmptyObservableSet$1;->this$0:Ljavafx/collections/FXCollections$EmptyObservableSet;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 1615
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableSet$1;, "Ljavafx/collections/FXCollections$EmptyObservableSet$1;"
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableSet$1;, "Ljavafx/collections/FXCollections$EmptyObservableSet$1;"
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1620
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableSet$1;, "Ljavafx/collections/FXCollections$EmptyObservableSet$1;"
    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 1625
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableSet$1;, "Ljavafx/collections/FXCollections$EmptyObservableSet$1;"
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method
