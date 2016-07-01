.class Lcom/sun/javafx/collections/ElementObservableListDecorator$2;
.super Ljava/lang/Object;
.source "ElementObservableListDecorator.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/collections/ElementObservableListDecorator;-><init>(Ljavafx/collections/ObservableList;Ljavafx/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/collections/ListChangeListener",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/collections/ElementObservableListDecorator;


# direct methods
.method constructor <init>(Lcom/sun/javafx/collections/ElementObservableListDecorator;)V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator$2;, "Lcom/sun/javafx/collections/ElementObservableListDecorator$2;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/collections/ElementObservableListDecorator;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/collections/ElementObservableListDecorator$2;->this$0:Lcom/sun/javafx/collections/ElementObservableListDecorator;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator$2;, "Lcom/sun/javafx/collections/ElementObservableListDecorator$2;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    :cond_0
    :goto_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 90
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v6

    move v2, v6

    .line 92
    .local v2, "removedSize":I
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v6

    move-object v3, v6

    .line 93
    .local v3, "removed":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 94
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ElementObservableListDecorator$2;->this$0:Lcom/sun/javafx/collections/ElementObservableListDecorator;

    invoke-static {v6}, Lcom/sun/javafx/collections/ElementObservableListDecorator;->access$500(Lcom/sun/javafx/collections/ElementObservableListDecorator;)Lcom/sun/javafx/collections/ElementObserver;

    move-result-object v6

    move-object v7, v3

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/javafx/collections/ElementObserver;->detachListener(Ljava/lang/Object;)V

    .line 93
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 96
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ElementObservableListDecorator$2;->this$0:Lcom/sun/javafx/collections/ElementObservableListDecorator;

    invoke-static {v6}, Lcom/sun/javafx/collections/ElementObservableListDecorator;->access$100(Lcom/sun/javafx/collections/ElementObservableListDecorator;)Ljavafx/collections/ObservableList;

    move-result-object v6

    instance-of v6, v6, Ljava/util/RandomAccess;

    if-eqz v6, :cond_4

    .line 97
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v6

    move v4, v6

    .line 98
    .local v4, "to":I
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v6

    move v5, v6

    .local v5, "i":I
    :goto_2
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_3

    .line 99
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ElementObservableListDecorator$2;->this$0:Lcom/sun/javafx/collections/ElementObservableListDecorator;

    invoke-static {v6}, Lcom/sun/javafx/collections/ElementObservableListDecorator;->access$500(Lcom/sun/javafx/collections/ElementObservableListDecorator;)Lcom/sun/javafx/collections/ElementObserver;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ElementObservableListDecorator$2;->this$0:Lcom/sun/javafx/collections/ElementObservableListDecorator;

    invoke-static {v7}, Lcom/sun/javafx/collections/ElementObservableListDecorator;->access$100(Lcom/sun/javafx/collections/ElementObservableListDecorator;)Ljavafx/collections/ObservableList;

    move-result-object v7

    move v8, v5

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/javafx/collections/ElementObserver;->attachListener(Ljava/lang/Object;)V

    .line 98
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 101
    .line 106
    .end local v4    # "to":I
    .end local v5    # "i":I
    :cond_3
    goto :goto_0

    .line 102
    .local v4, "i":I
    :cond_4
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    .end local v4    # "i":I
    :goto_3
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 103
    .local v5, "e":Ljava/lang/Object;, "TE;"
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ElementObservableListDecorator$2;->this$0:Lcom/sun/javafx/collections/ElementObservableListDecorator;

    invoke-static {v6}, Lcom/sun/javafx/collections/ElementObservableListDecorator;->access$500(Lcom/sun/javafx/collections/ElementObservableListDecorator;)Lcom/sun/javafx/collections/ElementObserver;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/sun/javafx/collections/ElementObserver;->attachListener(Ljava/lang/Object;)V

    .line 104
    goto :goto_3

    .line 108
    .end local v2    # "removedSize":I
    .end local v3    # "removed":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    .end local v5    # "e":Ljava/lang/Object;, "TE;"
    :cond_5
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 109
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ElementObservableListDecorator$2;->this$0:Lcom/sun/javafx/collections/ElementObservableListDecorator;

    move-object v7, v1

    invoke-static {v6, v7}, Lcom/sun/javafx/collections/ElementObservableListDecorator;->access$600(Lcom/sun/javafx/collections/ElementObservableListDecorator;Ljavafx/collections/ListChangeListener$Change;)V

    .line 110
    return-void
.end method
