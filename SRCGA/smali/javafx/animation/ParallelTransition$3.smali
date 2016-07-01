.class Ljavafx/animation/ParallelTransition$3;
.super Lcom/sun/javafx/collections/VetoableListDecorator;
.source "ParallelTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/ParallelTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/VetoableListDecorator",
        "<",
        "Ljavafx/animation/Animation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/ParallelTransition;


# direct methods
.method constructor <init>(Ljavafx/animation/ParallelTransition;Ljavafx/collections/ObservableList;)V
    .locals 5

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/animation/ParallelTransition;
    move-object v2, p2

    .local v2, "x0":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/animation/Animation;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/animation/ParallelTransition$3;->this$0:Ljavafx/animation/ParallelTransition;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/javafx/collections/VetoableListDecorator;-><init>(Ljavafx/collections/ObservableList;)V

    return-void
.end method


# virtual methods
.method protected varargs onProposedChange(Ljava/util/List;[I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/animation/Animation;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition$3;
    move-object v1, p1

    .local v1, "toBeAdded":Ljava/util/List;, "Ljava/util/List<Ljavafx/animation/Animation;>;"
    move-object v2, p2

    .local v2, "indexes":[I
    const/4 v6, 0x0

    move-object v3, v6

    .line 195
    .local v3, "exception":Ljava/lang/IllegalArgumentException;
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v2

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 196
    move-object v6, v2

    move v7, v4

    aget v6, v6, v7

    move v5, v6

    .local v5, "idx":I
    :goto_1
    move v6, v5

    move-object v7, v2

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    if-ge v6, v7, :cond_0

    .line 197
    move-object v6, v0

    iget-object v6, v6, Ljavafx/animation/ParallelTransition$3;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-static {v6}, Ljavafx/animation/ParallelTransition;->access$500(Ljavafx/animation/ParallelTransition;)Ljava/util/Set;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/animation/ParallelTransition$3;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-static {v7}, Ljavafx/animation/ParallelTransition;->access$400(Ljavafx/animation/ParallelTransition;)Ljavafx/collections/ObservableList;

    move-result-object v7

    move v8, v5

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    .line 196
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 195
    :cond_0
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 200
    .end local v5    # "idx":I
    :cond_1
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    .end local v4    # "i":I
    :goto_2
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/animation/Animation;

    move-object v5, v6

    .line 201
    .local v5, "child":Ljavafx/animation/Animation;
    move-object v6, v5

    if-nez v6, :cond_3

    .line 202
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Child cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 215
    .end local v5    # "child":Ljavafx/animation/Animation;
    :cond_2
    :goto_3
    move-object v6, v3

    if-eqz v6, :cond_6

    .line 216
    move-object v6, v0

    iget-object v6, v6, Ljavafx/animation/ParallelTransition$3;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-static {v6}, Ljavafx/animation/ParallelTransition;->access$500(Ljavafx/animation/ParallelTransition;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 217
    move-object v6, v0

    iget-object v6, v6, Ljavafx/animation/ParallelTransition$3;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-static {v6}, Ljavafx/animation/ParallelTransition;->access$500(Ljavafx/animation/ParallelTransition;)Ljava/util/Set;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/animation/ParallelTransition$3;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-static {v7}, Ljavafx/animation/ParallelTransition;->access$400(Ljavafx/animation/ParallelTransition;)Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v6

    .line 218
    move-object v6, v3

    throw v6

    .line 205
    .restart local v5    # "child":Ljavafx/animation/Animation;
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Ljavafx/animation/ParallelTransition$3;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-static {v6}, Ljavafx/animation/ParallelTransition;->access$500(Ljavafx/animation/ParallelTransition;)Ljava/util/Set;

    move-result-object v6

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 206
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Attempting to add a duplicate to the list of children"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 207
    goto :goto_3

    .line 209
    :cond_4
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Ljavafx/animation/ParallelTransition$3;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-static {v6, v7}, Ljavafx/animation/ParallelTransition;->access$600(Ljavafx/animation/Animation;Ljavafx/animation/Animation;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 210
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "This change would create cycle"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 211
    goto :goto_3

    .line 213
    :cond_5
    goto :goto_2

    .line 220
    .end local v5    # "child":Ljavafx/animation/Animation;
    :cond_6
    return-void
.end method
