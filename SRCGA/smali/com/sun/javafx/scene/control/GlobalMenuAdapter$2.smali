.class Lcom/sun/javafx/scene/control/GlobalMenuAdapter$2;
.super Ljava/lang/Object;
.source "GlobalMenuAdapter.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/GlobalMenuAdapter;-><init>(Ljavafx/scene/control/Menu;)V
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
        "Ljavafx/scene/control/MenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/GlobalMenuAdapter;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/GlobalMenuAdapter;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/GlobalMenuAdapter$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/GlobalMenuAdapter;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$2;->this$0:Lcom/sun/javafx/scene/control/GlobalMenuAdapter;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+",
            "Ljavafx/scene/control/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/GlobalMenuAdapter$2;
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljavafx/scene/control/MenuItem;>;"
    :goto_0
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 93
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v7

    move v2, v7

    .line 94
    .local v2, "from":I
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v7

    move v3, v7

    .line 95
    .local v3, "to":I
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v7

    move-object v4, v7

    .line 96
    .local v4, "removed":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/MenuItem;>;"
    move v7, v2

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    move v8, v2

    if-lt v7, v8, :cond_0

    .line 97
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$2;->this$0:Lcom/sun/javafx/scene/control/GlobalMenuAdapter;

    invoke-static {v7}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->access$000(Lcom/sun/javafx/scene/control/GlobalMenuAdapter;)Ljavafx/collections/ObservableList;

    move-result-object v7

    move v8, v5

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 98
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$2;->this$0:Lcom/sun/javafx/scene/control/GlobalMenuAdapter;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v7

    move v8, v5

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 96
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 100
    :cond_0
    move v7, v2

    move v5, v7

    :goto_2
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 101
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v7

    move v8, v5

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/MenuItem;

    move-object v6, v7

    .line 102
    .local v6, "item":Ljavafx/scene/control/MenuItem;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$2;->this$0:Lcom/sun/javafx/scene/control/GlobalMenuAdapter;

    move-object v8, v6

    move v9, v5

    invoke-static {v7, v8, v9}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->access$100(Lcom/sun/javafx/scene/control/GlobalMenuAdapter;Ljavafx/scene/control/MenuItem;I)V

    .line 100
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 104
    .end local v6    # "item":Ljavafx/scene/control/MenuItem;
    :cond_1
    goto :goto_0

    .line 105
    .end local v2    # "from":I
    .end local v3    # "to":I
    .end local v4    # "removed":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/MenuItem;>;"
    .end local v5    # "i":I
    :cond_2
    return-void
.end method
