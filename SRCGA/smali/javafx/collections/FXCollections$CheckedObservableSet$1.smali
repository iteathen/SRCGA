.class Ljavafx/collections/FXCollections$CheckedObservableSet$1;
.super Ljava/lang/Object;
.source "FXCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/collections/FXCollections$CheckedObservableSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/collections/FXCollections$CheckedObservableSet;

.field final synthetic val$it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljavafx/collections/FXCollections$CheckedObservableSet;Ljava/util/Iterator;)V
    .locals 5

    .prologue
    .line 2037
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet$1;, "Ljavafx/collections/FXCollections$CheckedObservableSet$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/collections/FXCollections$CheckedObservableSet;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/collections/FXCollections$CheckedObservableSet$1;->this$0:Ljavafx/collections/FXCollections$CheckedObservableSet;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/collections/FXCollections$CheckedObservableSet$1;->val$it:Ljava/util/Iterator;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 2040
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet$1;, "Ljavafx/collections/FXCollections$CheckedObservableSet$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableSet$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableSet$1;, "Ljavafx/collections/FXCollections$CheckedObservableSet$1;"
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 2045
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet$1;, "Ljavafx/collections/FXCollections$CheckedObservableSet$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableSet$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableSet$1;, "Ljavafx/collections/FXCollections$CheckedObservableSet$1;"
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 2050
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableSet$1;, "Ljavafx/collections/FXCollections$CheckedObservableSet$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableSet$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2051
    return-void
.end method
