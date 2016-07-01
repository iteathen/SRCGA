.class Lcom/sun/javafx/css/Rule$Observables$1;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/css/Rule$Observables;-><init>(Lcom/sun/javafx/css/Rule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Lcom/sun/javafx/css/Selector;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/css/Rule$Observables;


# direct methods
.method constructor <init>(Lcom/sun/javafx/css/Rule$Observables;Ljava/util/List;)V
    .locals 5

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Rule$Observables$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/css/Rule$Observables;
    move-object v2, p2

    .local v2, "x0":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/css/Rule$Observables$1;->this$0:Lcom/sun/javafx/css/Rule$Observables;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/javafx/collections/TrackableObservableList;-><init>(Ljava/util/List;)V

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
            "Lcom/sun/javafx/css/Selector;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Rule$Observables$1;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Lcom/sun/javafx/css/Selector;>;"
    :cond_0
    :goto_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 255
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 256
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v6

    move-object v2, v6

    .line 257
    .local v2, "added":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v4, v6

    .local v4, "max":I
    :goto_1
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 258
    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/css/Selector;

    move-object v5, v6

    .line 259
    .local v5, "sel":Lcom/sun/javafx/css/Selector;
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/Rule$Observables$1;->this$0:Lcom/sun/javafx/css/Rule$Observables;

    invoke-static {v7}, Lcom/sun/javafx/css/Rule$Observables;->access$300(Lcom/sun/javafx/css/Rule$Observables;)Lcom/sun/javafx/css/Rule;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/javafx/css/Selector;->setRule(Lcom/sun/javafx/css/Rule;)V

    .line 257
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 263
    .end local v2    # "added":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    .end local v3    # "i":I
    .end local v4    # "max":I
    .end local v5    # "sel":Lcom/sun/javafx/css/Selector;
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 264
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v6

    move-object v2, v6

    .line 265
    .local v2, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    const/4 v6, 0x0

    move v3, v6

    .restart local v3    # "i":I
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v4, v6

    .restart local v4    # "max":I
    :goto_2
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_3

    .line 266
    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/css/Selector;

    move-object v5, v6

    .line 267
    .restart local v5    # "sel":Lcom/sun/javafx/css/Selector;
    move-object v6, v5

    invoke-virtual {v6}, Lcom/sun/javafx/css/Selector;->getRule()Lcom/sun/javafx/css/Rule;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/Rule$Observables$1;->this$0:Lcom/sun/javafx/css/Rule$Observables;

    invoke-static {v7}, Lcom/sun/javafx/css/Rule$Observables;->access$300(Lcom/sun/javafx/css/Rule$Observables;)Lcom/sun/javafx/css/Rule;

    move-result-object v7

    if-ne v6, v7, :cond_2

    .line 268
    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/javafx/css/Selector;->setRule(Lcom/sun/javafx/css/Rule;)V

    .line 265
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 271
    .end local v5    # "sel":Lcom/sun/javafx/css/Selector;
    :cond_3
    goto :goto_0

    .line 273
    .end local v2    # "removed":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    .end local v3    # "i":I
    .end local v4    # "max":I
    :cond_4
    return-void
.end method
