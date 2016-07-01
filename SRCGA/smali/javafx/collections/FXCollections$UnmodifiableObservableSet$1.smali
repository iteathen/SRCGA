.class Ljavafx/collections/FXCollections$UnmodifiableObservableSet$1;
.super Ljava/lang/Object;
.source "FXCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->iterator()Ljava/util/Iterator;
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
.field private final i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/collections/FXCollections$UnmodifiableObservableSet;


# direct methods
.method constructor <init>(Ljavafx/collections/FXCollections$UnmodifiableObservableSet;)V
    .locals 4

    .prologue
    .line 1658
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet$1;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/collections/FXCollections$UnmodifiableObservableSet;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/collections/FXCollections$UnmodifiableObservableSet$1;->this$0:Ljavafx/collections/FXCollections$UnmodifiableObservableSet;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1659
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$UnmodifiableObservableSet$1;->this$0:Ljavafx/collections/FXCollections$UnmodifiableObservableSet;

    invoke-static {v3}, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->access$100(Ljavafx/collections/FXCollections$UnmodifiableObservableSet;)Ljavafx/collections/ObservableSet;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/FXCollections$UnmodifiableObservableSet$1;->i:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 1663
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet$1;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$UnmodifiableObservableSet$1;->i:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet$1;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet$1;"
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
    .line 1668
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet$1;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$UnmodifiableObservableSet$1;->i:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet$1;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet$1;"
    return-object v0
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 1673
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet$1;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet$1;"
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method
