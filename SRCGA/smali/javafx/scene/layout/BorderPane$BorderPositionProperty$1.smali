.class Ljavafx/scene/layout/BorderPane$BorderPositionProperty$1;
.super Ljava/lang/Object;
.source "BorderPane.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/BorderPane$BorderPositionProperty;-><init>(Ljavafx/scene/layout/BorderPane;Ljava/lang/String;)V
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
.field final synthetic this$1:Ljavafx/scene/layout/BorderPane$BorderPositionProperty;

.field final synthetic val$this$0:Ljavafx/scene/layout/BorderPane;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/BorderPane$BorderPositionProperty;Ljavafx/scene/layout/BorderPane;)V
    .locals 5

    .prologue
    .line 644
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane$BorderPositionProperty$1;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/layout/BorderPane$BorderPositionProperty;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/layout/BorderPane$BorderPositionProperty$1;->this$1:Ljavafx/scene/layout/BorderPane$BorderPositionProperty;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/layout/BorderPane$BorderPositionProperty$1;->val$this$0:Ljavafx/scene/layout/BorderPane;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 7
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
    .line 648
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane$BorderPositionProperty$1;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljavafx/scene/Node;>;"
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/layout/BorderPane$BorderPositionProperty$1;->this$1:Ljavafx/scene/layout/BorderPane$BorderPositionProperty;

    invoke-static {v5}, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;->access$000(Ljavafx/scene/layout/BorderPane$BorderPositionProperty;)Ljavafx/scene/Node;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/layout/BorderPane$BorderPositionProperty$1;->this$1:Ljavafx/scene/layout/BorderPane$BorderPositionProperty;

    invoke-static {v5}, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;->access$100(Ljavafx/scene/layout/BorderPane$BorderPositionProperty;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 649
    .line 662
    :cond_0
    :goto_0
    return-void

    .line 660
    .line 651
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 652
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 653
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v5

    move-object v2, v5

    .line 654
    .local v2, "removed":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/Node;>;"
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v4, v5

    .local v4, "sz":I
    :goto_1
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_1

    .line 655
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/BorderPane$BorderPositionProperty$1;->this$1:Ljavafx/scene/layout/BorderPane$BorderPositionProperty;

    invoke-static {v6}, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;->access$000(Ljavafx/scene/layout/BorderPane$BorderPositionProperty;)Ljavafx/scene/Node;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 656
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/layout/BorderPane$BorderPositionProperty$1;->this$1:Ljavafx/scene/layout/BorderPane$BorderPositionProperty;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;->access$002(Ljavafx/scene/layout/BorderPane$BorderPositionProperty;Ljavafx/scene/Node;)Ljavafx/scene/Node;

    move-result-object v5

    .line 657
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/layout/BorderPane$BorderPositionProperty$1;->this$1:Ljavafx/scene/layout/BorderPane$BorderPositionProperty;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;->set(Ljava/lang/Object;)V

    .line 654
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 662
    .end local v2    # "removed":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/Node;>;"
    .end local v3    # "i":I
    .end local v4    # "sz":I
    :cond_3
    goto :goto_0
.end method
