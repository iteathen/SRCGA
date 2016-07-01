.class Ljavafx/scene/Node$3;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Node;


# direct methods
.method constructor <init>(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 1020
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Node$3;->this$0:Ljavafx/scene/Node;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/TrackableObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1023
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$3;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljava/lang/String;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$3;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->impl_reapplyCSS()V

    .line 1024
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1028
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$3;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node$3;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1029
    const-string v3, ""

    move-object v0, v3

    .line 1040
    .end local v0    # "this":Ljavafx/scene/Node$3;
    .local v1, "buf":Ljava/lang/StringBuilder;
    .local v2, "i":I
    :goto_0
    return-object v0

    .line 1030
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .restart local v0    # "this":Ljavafx/scene/Node$3;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node$3;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1031
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/Node$3;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    goto :goto_0

    .line 1033
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v3

    .line 1034
    .restart local v1    # "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    move v2, v3

    .restart local v2    # "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node$3;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1035
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/Node$3;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1036
    move v3, v2

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node$3;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1037
    move-object v3, v1

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1034
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1040
    :cond_3
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method
