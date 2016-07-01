.class Ljavafx/scene/Node$NodeTransformation$10;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node$NodeTransformation;->getTransforms()Ljavafx/collections/ObservableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Ljavafx/scene/transform/Transform;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/Node$NodeTransformation;


# direct methods
.method constructor <init>(Ljavafx/scene/Node$NodeTransformation;)V
    .locals 4

    .prologue
    .line 6004
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$10;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/Node$NodeTransformation;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Node$NodeTransformation$10;->this$1:Ljavafx/scene/Node$NodeTransformation;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/TrackableObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<",
            "Ljavafx/scene/transform/Transform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6007
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$10;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/transform/Transform;>;"
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6008
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/transform/Transform;

    move-object v3, v4

    .line 6009
    .local v3, "t":Ljavafx/scene/transform/Transform;
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Node$NodeTransformation$10;->this$1:Ljavafx/scene/Node$NodeTransformation;

    iget-object v5, v5, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v4, v5}, Ljavafx/scene/transform/Transform;->impl_remove(Ljavafx/scene/Node;)V

    .line 6010
    goto :goto_1

    .line 6011
    .end local v3    # "t":Ljavafx/scene/transform/Transform;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_2
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/transform/Transform;

    move-object v3, v4

    .line 6012
    .restart local v3    # "t":Ljavafx/scene/transform/Transform;
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Node$NodeTransformation$10;->this$1:Ljavafx/scene/Node$NodeTransformation;

    iget-object v5, v5, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v4, v5}, Ljavafx/scene/transform/Transform;->impl_add(Ljavafx/scene/Node;)V

    .line 6013
    goto :goto_2

    .end local v3    # "t":Ljavafx/scene/transform/Transform;
    :cond_1
    goto :goto_0

    .line 6016
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node$NodeTransformation$10;->this$1:Ljavafx/scene/Node$NodeTransformation;

    iget-object v4, v4, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v4}, Ljavafx/scene/Node;->impl_transformsChanged()V

    .line 6017
    return-void
.end method
