.class Ljavafx/scene/control/SplitPane$1;
.super Ljava/lang/Object;
.source "SplitPane.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/SplitPane;-><init>([Ljavafx/scene/Node;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/collections/ListChangeListener",
        "<",
        "Ljavafx/scene/Node;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/SplitPane;


# direct methods
.method constructor <init>(Ljavafx/scene/control/SplitPane;)V
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitPane$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/SplitPane;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/SplitPane$1;->this$0:Ljavafx/scene/control/SplitPane;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+",
            "Ljavafx/scene/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/SplitPane$1;
    move-object v2, p1

    .local v2, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljavafx/scene/Node;>;"
    :goto_0
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 198
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v6

    move v3, v6

    .line 199
    .local v3, "from":I
    move v6, v3

    move v4, v6

    .line 200
    .local v4, "index":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 201
    move v6, v4

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/control/SplitPane$1;->this$0:Ljavafx/scene/control/SplitPane;

    invoke-static {v7}, Ljavafx/scene/control/SplitPane;->access$000(Ljavafx/scene/control/SplitPane;)Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 202
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/SplitPane$1;->this$0:Ljavafx/scene/control/SplitPane;

    invoke-static {v6}, Ljavafx/scene/control/SplitPane;->access$100(Ljavafx/scene/control/SplitPane;)Ljava/util/WeakHashMap;

    move-result-object v6

    move v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 212
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 200
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 203
    :cond_1
    move v6, v4

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/control/SplitPane$1;->this$0:Ljavafx/scene/control/SplitPane;

    invoke-static {v7}, Ljavafx/scene/control/SplitPane;->access$000(Ljavafx/scene/control/SplitPane;)Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 204
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/SplitPane$1;->this$0:Ljavafx/scene/control/SplitPane;

    invoke-static {v6}, Ljavafx/scene/control/SplitPane;->access$000(Ljavafx/scene/control/SplitPane;)Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 205
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->wasReplaced()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 206
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/SplitPane$1;->this$0:Ljavafx/scene/control/SplitPane;

    invoke-static {v6}, Ljavafx/scene/control/SplitPane;->access$100(Ljavafx/scene/control/SplitPane;)Ljava/util/WeakHashMap;

    move-result-object v6

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/control/SplitPane$1;->this$0:Ljavafx/scene/control/SplitPane;

    invoke-static {v8}, Ljavafx/scene/control/SplitPane;->access$000(Ljavafx/scene/control/SplitPane;)Ljavafx/collections/ObservableList;

    move-result-object v8

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/SplitPane$Divider;

    invoke-virtual {v8}, Ljavafx/scene/control/SplitPane$Divider;->getPosition()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    .line 208
    :cond_2
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/SplitPane$1;->this$0:Ljavafx/scene/control/SplitPane;

    invoke-static {v6}, Ljavafx/scene/control/SplitPane;->access$100(Ljavafx/scene/control/SplitPane;)Ljava/util/WeakHashMap;

    move-result-object v6

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    .line 214
    :cond_3
    const/4 v6, 0x0

    move v5, v6

    :goto_3
    move v6, v5

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/control/SplitPane$1;->this$0:Ljavafx/scene/control/SplitPane;

    invoke-static {v7}, Ljavafx/scene/control/SplitPane;->access$000(Ljavafx/scene/control/SplitPane;)Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 215
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/SplitPane$1;->this$0:Ljavafx/scene/control/SplitPane;

    invoke-static {v6}, Ljavafx/scene/control/SplitPane;->access$100(Ljavafx/scene/control/SplitPane;)Ljava/util/WeakHashMap;

    move-result-object v6

    move v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    .line 216
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/SplitPane$1;->this$0:Ljavafx/scene/control/SplitPane;

    invoke-static {v6}, Ljavafx/scene/control/SplitPane;->access$100(Ljavafx/scene/control/SplitPane;)Ljava/util/WeakHashMap;

    move-result-object v6

    move v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/control/SplitPane$1;->this$0:Ljavafx/scene/control/SplitPane;

    invoke-static {v8}, Ljavafx/scene/control/SplitPane;->access$000(Ljavafx/scene/control/SplitPane;)Ljavafx/collections/ObservableList;

    move-result-object v8

    move v9, v5

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/SplitPane$Divider;

    invoke-virtual {v8}, Ljavafx/scene/control/SplitPane$Divider;->getPosition()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 214
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 219
    :cond_5
    goto/16 :goto_0

    .line 220
    .end local v3    # "from":I
    .end local v4    # "index":I
    .end local v5    # "i":I
    :cond_6
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/SplitPane$1;->this$0:Ljavafx/scene/control/SplitPane;

    invoke-static {v6}, Ljavafx/scene/control/SplitPane;->access$000(Ljavafx/scene/control/SplitPane;)Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->clear()V

    .line 221
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_4
    move v6, v3

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/control/SplitPane$1;->this$0:Ljavafx/scene/control/SplitPane;

    invoke-virtual {v7}, Ljavafx/scene/control/SplitPane;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_8

    .line 222
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/SplitPane$1;->this$0:Ljavafx/scene/control/SplitPane;

    invoke-static {v6}, Ljavafx/scene/control/SplitPane;->access$100(Ljavafx/scene/control/SplitPane;)Ljava/util/WeakHashMap;

    move-result-object v6

    move v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/SplitPane$1;->this$0:Ljavafx/scene/control/SplitPane;

    invoke-static {v6}, Ljavafx/scene/control/SplitPane;->access$100(Ljavafx/scene/control/SplitPane;)Ljava/util/WeakHashMap;

    move-result-object v6

    move v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_7

    .line 223
    new-instance v6, Ljavafx/scene/control/SplitPane$Divider;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljavafx/scene/control/SplitPane$Divider;-><init>()V

    move-object v4, v6

    .line 224
    .local v4, "d":Ljavafx/scene/control/SplitPane$Divider;
    move-object v6, v4

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/control/SplitPane$1;->this$0:Ljavafx/scene/control/SplitPane;

    invoke-static {v7}, Ljavafx/scene/control/SplitPane;->access$100(Ljavafx/scene/control/SplitPane;)Ljava/util/WeakHashMap;

    move-result-object v7

    move v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/SplitPane$Divider;->setPosition(D)V

    .line 225
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/SplitPane$1;->this$0:Ljavafx/scene/control/SplitPane;

    invoke-static {v6}, Ljavafx/scene/control/SplitPane;->access$000(Ljavafx/scene/control/SplitPane;)Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v4

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 226
    .line 229
    .end local v4    # "d":Ljavafx/scene/control/SplitPane$Divider;
    :goto_5
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/SplitPane$1;->this$0:Ljavafx/scene/control/SplitPane;

    invoke-static {v6}, Ljavafx/scene/control/SplitPane;->access$100(Ljavafx/scene/control/SplitPane;)Ljava/util/WeakHashMap;

    move-result-object v6

    move v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 227
    :cond_7
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/SplitPane$1;->this$0:Ljavafx/scene/control/SplitPane;

    invoke-static {v6}, Ljavafx/scene/control/SplitPane;->access$000(Ljavafx/scene/control/SplitPane;)Ljavafx/collections/ObservableList;

    move-result-object v6

    new-instance v7, Ljavafx/scene/control/SplitPane$Divider;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljavafx/scene/control/SplitPane$Divider;-><init>()V

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_5

    .line 231
    :cond_8
    return-void
.end method
