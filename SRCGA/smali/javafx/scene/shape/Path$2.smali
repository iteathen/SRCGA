.class Ljavafx/scene/shape/Path$2;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/shape/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Ljavafx/scene/shape/PathElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/shape/Path;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/Path;)V
    .locals 4

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Path$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/Path;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/Path$2;->this$0:Ljavafx/scene/shape/Path;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/TrackableObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<",
            "Ljavafx/scene/shape/PathElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Path$2;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/shape/PathElement;>;"
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v2, v6

    .line 189
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/shape/PathElement;>;"
    const/4 v6, 0x0

    move v3, v6

    .line 190
    .local v3, "firstElementChanged":Z
    :goto_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 191
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v6

    move-object v4, v6

    .line 192
    .local v4, "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/shape/PathElement;>;"
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 193
    move-object v6, v4

    move v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/shape/PathElement;

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/shape/Path$2;->this$0:Ljavafx/scene/shape/Path;

    invoke-virtual {v6, v7}, Ljavafx/scene/shape/PathElement;->removeNode(Ljavafx/scene/Node;)V

    .line 192
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 195
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v6

    move v5, v6

    :goto_2
    move v6, v5

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 196
    move-object v6, v2

    move v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/shape/PathElement;

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/shape/Path$2;->this$0:Ljavafx/scene/shape/Path;

    invoke-virtual {v6, v7}, Ljavafx/scene/shape/PathElement;->addNode(Ljavafx/scene/Node;)V

    .line 195
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 198
    :cond_1
    move v6, v3

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x1

    :goto_3
    or-int/2addr v6, v7

    move v3, v6

    .line 199
    goto :goto_0

    .line 198
    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    .line 204
    .end local v4    # "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/shape/PathElement;>;"
    .end local v5    # "i":I
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/Path$2;->this$0:Ljavafx/scene/shape/Path;

    invoke-static {v6}, Ljavafx/scene/shape/Path;->access$100(Ljavafx/scene/shape/Path;)Lcom/sun/javafx/geom/Path2D;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 205
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 206
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v6

    .line 208
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    if-ne v6, v7, :cond_6

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v6

    if-nez v6, :cond_6

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 210
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v6

    move v4, v6

    .local v4, "i":I
    :goto_4
    move v6, v4

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 211
    move-object v6, v2

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/shape/PathElement;

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/shape/Path$2;->this$0:Ljavafx/scene/shape/Path;

    invoke-static {v7}, Ljavafx/scene/shape/Path;->access$100(Ljavafx/scene/shape/Path;)Lcom/sun/javafx/geom/Path2D;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/scene/shape/PathElement;->impl_addTo(Lcom/sun/javafx/geom/Path2D;)V

    .line 210
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 217
    .end local v4    # "i":I
    :cond_4
    :goto_5
    move v6, v3

    if-eqz v6, :cond_5

    .line 218
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/Path$2;->this$0:Ljavafx/scene/shape/Path;

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/shape/Path$2;->this$0:Ljavafx/scene/shape/Path;

    invoke-static {v7}, Ljavafx/scene/shape/Path;->access$300(Ljavafx/scene/shape/Path;)Z

    move-result v7

    invoke-static {v6, v7}, Ljavafx/scene/shape/Path;->access$202(Ljavafx/scene/shape/Path;Z)Z

    move-result v6

    .line 221
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/Path$2;->this$0:Ljavafx/scene/shape/Path;

    sget-object v7, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v6, v7}, Ljavafx/scene/shape/Path;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 222
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/Path$2;->this$0:Ljavafx/scene/shape/Path;

    invoke-static {v6}, Ljavafx/scene/shape/Path;->access$400(Ljavafx/scene/shape/Path;)V

    .line 223
    return-void

    .line 214
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/Path$2;->this$0:Ljavafx/scene/shape/Path;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljavafx/scene/shape/Path;->access$102(Ljavafx/scene/shape/Path;Lcom/sun/javafx/geom/Path2D;)Lcom/sun/javafx/geom/Path2D;

    move-result-object v6

    goto :goto_5
.end method
