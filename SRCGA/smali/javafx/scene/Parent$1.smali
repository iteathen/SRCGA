.class Ljavafx/scene/Parent$1;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "Parent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Parent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Ljavafx/scene/Node;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Parent;


# direct methods
.method constructor <init>(Ljavafx/scene/Parent;)V
    .locals 4

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Parent;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/TrackableObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<",
            "Ljavafx/scene/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent$1;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/Node;>;"
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljavafx/scene/Parent;->access$002(Ljavafx/scene/Parent;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 233
    const/4 v9, 0x0

    move v2, v9

    .line 234
    .local v2, "relayout":Z
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    invoke-static {v9}, Ljavafx/scene/Parent;->access$100(Ljavafx/scene/Parent;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 235
    :goto_0
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 236
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v9

    move v3, v9

    .line 237
    .local v3, "from":I
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v9

    move v4, v9

    .line 238
    .local v4, "to":I
    move v9, v3

    move v5, v9

    .local v5, "i":I
    :goto_1
    move v9, v5

    move v10, v4

    if-ge v9, v10, :cond_2

    .line 239
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    invoke-static {v9}, Ljavafx/scene/Parent;->access$200(Ljavafx/scene/Parent;)Ljavafx/collections/ObservableList;

    move-result-object v9

    move v10, v5

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/Node;

    move-object v6, v9

    .line 240
    .local v6, "n":Ljavafx/scene/Node;
    move-object v9, v6

    invoke-virtual {v9}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v9

    if-eqz v9, :cond_1

    move-object v9, v6

    invoke-virtual {v9}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    if-eq v9, v10, :cond_1

    .line 241
    # getter for: Ljavafx/scene/Parent;->warnOnAutoMove:Z
    invoke-static {}, Ljavafx/scene/Parent;->access$300()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 242
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "WARNING added to a new parent without first removing it from its current"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "    parent. It will be automatically removed from its current parent."

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    node="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " oldparent= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v11}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " newparent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 246
    :cond_0
    move-object v9, v6

    invoke-virtual {v9}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v9

    invoke-static {v9}, Ljavafx/scene/Parent;->access$200(Ljavafx/scene/Parent;)Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v10, v6

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 247
    # getter for: Ljavafx/scene/Parent;->warnOnAutoMove:Z
    invoke-static {}, Ljavafx/scene/Parent;->access$300()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 248
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 238
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 253
    .end local v6    # "n":Ljavafx/scene/Node;
    :cond_2
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v9

    move-object v5, v9

    .line 254
    .local v5, "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v6, v9

    .line 255
    .local v6, "removedSize":I
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_2
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_4

    .line 256
    move-object v9, v5

    move v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/Node;

    move-object v8, v9

    .line 257
    .local v8, "n":Ljavafx/scene/Node;
    move-object v9, v8

    invoke-virtual {v9}, Ljavafx/scene/Node;->isManaged()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 258
    const/4 v9, 0x1

    move v2, v9

    .line 255
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 263
    .end local v8    # "n":Ljavafx/scene/Node;
    :cond_4
    move v9, v3

    move v7, v9

    :goto_3
    move v9, v7

    move v10, v4

    if-ge v9, v10, :cond_7

    .line 264
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    invoke-static {v9}, Ljavafx/scene/Parent;->access$200(Ljavafx/scene/Parent;)Ljavafx/collections/ObservableList;

    move-result-object v9

    move v10, v7

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/Node;

    move-object v8, v9

    .line 265
    .local v8, "node":Ljavafx/scene/Node;
    move-object v9, v8

    invoke-virtual {v9}, Ljavafx/scene/Node;->isManaged()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 266
    const/4 v9, 0x1

    move v2, v9

    .line 268
    :cond_5
    move-object v9, v8

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    invoke-virtual {v9, v10}, Ljavafx/scene/Node;->setParent(Ljavafx/scene/Parent;)V

    .line 269
    move-object v9, v8

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    invoke-virtual {v10}, Ljavafx/scene/Parent;->getScene()Ljavafx/scene/Scene;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    invoke-virtual {v11}, Ljavafx/scene/Parent;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Ljavafx/scene/Node;->setScenes(Ljavafx/scene/Scene;Ljavafx/scene/SubScene;Z)V

    .line 271
    move-object v9, v8

    invoke-virtual {v9}, Ljavafx/scene/Node;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 272
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Ljavafx/scene/Parent;->access$402(Ljavafx/scene/Parent;Z)Z

    move-result v9

    .line 273
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    move-object v10, v8

    invoke-static {v9, v10}, Ljavafx/scene/Parent;->access$500(Ljavafx/scene/Parent;Ljavafx/scene/Node;)V

    .line 263
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 276
    .end local v8    # "node":Ljavafx/scene/Node;
    :cond_7
    goto/16 :goto_0

    .line 282
    .end local v3    # "from":I
    .end local v4    # "to":I
    .end local v5    # "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .end local v6    # "removedSize":I
    .end local v7    # "i":I
    :cond_8
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    invoke-static {v9}, Ljavafx/scene/Parent;->access$600(Ljavafx/scene/Parent;)Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_a

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    invoke-static {v9}, Ljavafx/scene/Parent;->access$200(Ljavafx/scene/Parent;)Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->size()I

    move-result v9

    const/16 v10, 0xa

    if-le v9, v10, :cond_a

    .line 283
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    new-instance v10, Ljava/util/ArrayList;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const/16 v12, 0x14

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v9, v10}, Ljavafx/scene/Parent;->access$602(Ljavafx/scene/Parent;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    .line 287
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    invoke-static {v9}, Ljavafx/scene/Parent;->access$700(Ljavafx/scene/Parent;)I

    move-result v9

    if-lez v9, :cond_a

    .line 288
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    invoke-static {v9}, Ljavafx/scene/Parent;->access$200(Ljavafx/scene/Parent;)Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->size()I

    move-result v9

    move v3, v9

    .line 289
    .local v3, "size":I
    const/4 v9, 0x0

    move v4, v9

    .local v4, "i":I
    :goto_4
    move v9, v4

    move v10, v3

    if-ge v9, v10, :cond_a

    .line 290
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    invoke-static {v9}, Ljavafx/scene/Parent;->access$200(Ljavafx/scene/Parent;)Ljavafx/collections/ObservableList;

    move-result-object v9

    move v10, v4

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/Node;

    move-object v5, v9

    .line 291
    .local v5, "ch":Ljavafx/scene/Node;
    move-object v9, v5

    invoke-virtual {v9}, Ljavafx/scene/Node;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v9, v5

    iget-boolean v9, v9, Ljavafx/scene/Node;->boundsChanged:Z

    if-eqz v9, :cond_9

    .line 292
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    invoke-static {v9}, Ljavafx/scene/Parent;->access$600(Ljavafx/scene/Parent;)Ljava/util/ArrayList;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 289
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 295
    .line 338
    .end local v3    # "size":I
    .end local v4    # "i":I
    .end local v5    # "ch":Ljavafx/scene/Node;
    :cond_a
    :goto_5
    move v9, v2

    if-eqz v9, :cond_b

    .line 339
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    invoke-virtual {v9}, Ljavafx/scene/Parent;->requestLayout()V

    .line 342
    :cond_b
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    invoke-static {v9}, Ljavafx/scene/Parent;->access$400(Ljavafx/scene/Parent;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 343
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    invoke-virtual {v9}, Ljavafx/scene/Parent;->impl_geomChanged()V

    .line 348
    :cond_c
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 349
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v9

    .line 350
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    invoke-static {v9}, Ljavafx/scene/Parent;->access$800(Ljavafx/scene/Parent;)I

    move-result v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v10

    if-le v9, v10, :cond_d

    .line 351
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v10

    invoke-static {v9, v10}, Ljavafx/scene/Parent;->access$802(Ljavafx/scene/Parent;I)I

    move-result v9

    .line 354
    :cond_d
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    sget-object v10, Lcom/sun/javafx/scene/DirtyBits;->PARENT_CHILDREN:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v9, v10}, Ljavafx/scene/Parent;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 357
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    sget-object v10, Lcom/sun/javafx/scene/DirtyBits;->NODE_FORCE_SYNC:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v9, v10}, Ljavafx/scene/Parent;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 358
    return-void

    .line 315
    .line 300
    :cond_e
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 301
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v9

    move-object v3, v9

    .line 302
    .local v3, "removed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    const/4 v9, 0x0

    move v4, v9

    .restart local v4    # "i":I
    move-object v9, v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v5, v9

    .local v5, "removedSize":I
    :goto_6
    move v9, v4

    move v10, v5

    if-ge v9, v10, :cond_10

    .line 303
    move-object v9, v3

    move v10, v4

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/Node;

    invoke-virtual {v9}, Ljavafx/scene/Node;->isManaged()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 304
    const/4 v9, 0x1

    move v2, v9

    .line 305
    goto :goto_5

    .line 302
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 309
    :cond_10
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v9

    move v4, v9

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v9

    move v5, v9

    .local v5, "to":I
    :goto_7
    move v9, v4

    move v10, v5

    if-ge v9, v10, :cond_e

    .line 310
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Parent$1;->this$0:Ljavafx/scene/Parent;

    invoke-static {v9}, Ljavafx/scene/Parent;->access$200(Ljavafx/scene/Parent;)Ljavafx/collections/ObservableList;

    move-result-object v9

    move v10, v4

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/Node;

    invoke-virtual {v9}, Ljavafx/scene/Node;->isManaged()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 311
    const/4 v9, 0x1

    move v2, v9

    .line 312
    goto/16 :goto_5

    .line 309
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_7
.end method
