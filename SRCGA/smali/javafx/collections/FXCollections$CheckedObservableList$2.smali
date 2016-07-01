.class Ljavafx/collections/FXCollections$CheckedObservableList$2;
.super Ljava/lang/Object;
.source "FXCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/collections/FXCollections$CheckedObservableList;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/collections/FXCollections$CheckedObservableList;


# direct methods
.method constructor <init>(Ljavafx/collections/FXCollections$CheckedObservableList;)V
    .locals 4

    .prologue
    .line 1486
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList$2;, "Ljavafx/collections/FXCollections$CheckedObservableList$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/collections/FXCollections$CheckedObservableList;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/collections/FXCollections$CheckedObservableList$2;->this$0:Ljavafx/collections/FXCollections$CheckedObservableList;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1488
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableList$2;->this$0:Ljavafx/collections/FXCollections$CheckedObservableList;

    invoke-static {v3}, Ljavafx/collections/FXCollections$CheckedObservableList;->access$000(Ljavafx/collections/FXCollections$CheckedObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/FXCollections$CheckedObservableList$2;->it:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 1492
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList$2;, "Ljavafx/collections/FXCollections$CheckedObservableList$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableList$2;->it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList$2;, "Ljavafx/collections/FXCollections$CheckedObservableList$2;"
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1497
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList$2;, "Ljavafx/collections/FXCollections$CheckedObservableList$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableList$2;->it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList$2;, "Ljavafx/collections/FXCollections$CheckedObservableList$2;"
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1502
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList$2;, "Ljavafx/collections/FXCollections$CheckedObservableList$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableList$2;->it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1503
    return-void
.end method
