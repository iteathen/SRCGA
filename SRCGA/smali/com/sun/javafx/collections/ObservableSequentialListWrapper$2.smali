.class Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;
.super Ljava/lang/Object;
.source "ObservableSequentialListWrapper.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final backingIt:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field private lastReturned:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sun/javafx/collections/ObservableSequentialListWrapper;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;I)V
    .locals 6

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;
    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->this$0:Lcom/sun/javafx/collections/ObservableSequentialListWrapper;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->val$index:I

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 101
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->this$0:Lcom/sun/javafx/collections/ObservableSequentialListWrapper;

    invoke-static {v4}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->access$100(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;)Ljava/util/List;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->val$index:I

    invoke-interface {v4, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->backingIt:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->this$0:Lcom/sun/javafx/collections/ObservableSequentialListWrapper;

    invoke-static {v3}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->access$1000(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;)V

    .line 155
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->nextIndex()I

    move-result v3

    move v2, v3

    .line 156
    .local v2, "idx":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->backingIt:Ljava/util/ListIterator;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 157
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->this$0:Lcom/sun/javafx/collections/ObservableSequentialListWrapper;

    move v4, v2

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->access$1100(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;II)V

    .line 158
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->this$0:Lcom/sun/javafx/collections/ObservableSequentialListWrapper;

    invoke-static {v3}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->access$1200(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;)V

    .line 159
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->backingIt:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;"
    return v0
.end method

.method public hasPrevious()Z
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->backingIt:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;"
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;"
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->backingIt:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v1

    move-object v5, v2

    move-object v1, v5

    move-object v2, v4

    move-object v3, v5

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->lastReturned:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;"
    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->backingIt:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;"
    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;"
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->backingIt:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v1

    move-object v5, v2

    move-object v1, v5

    move-object v2, v4

    move-object v3, v5

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->lastReturned:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;"
    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->backingIt:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;"
    return v0
.end method

.method public remove()V
    .locals 5

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->this$0:Lcom/sun/javafx/collections/ObservableSequentialListWrapper;

    invoke-static {v2}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->access$400(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;)V

    .line 137
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->previousIndex()I

    move-result v2

    move v1, v2

    .line 138
    .local v1, "idx":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->backingIt:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    .line 139
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->this$0:Lcom/sun/javafx/collections/ObservableSequentialListWrapper;

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->lastReturned:Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->access$500(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;ILjava/lang/Object;)V

    .line 140
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->this$0:Lcom/sun/javafx/collections/ObservableSequentialListWrapper;

    invoke-static {v2}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->access$600(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;)V

    .line 141
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->this$0:Lcom/sun/javafx/collections/ObservableSequentialListWrapper;

    invoke-static {v3}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->access$700(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;)V

    .line 146
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->previousIndex()I

    move-result v3

    move v2, v3

    .line 147
    .local v2, "idx":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->backingIt:Ljava/util/ListIterator;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 148
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->this$0:Lcom/sun/javafx/collections/ObservableSequentialListWrapper;

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->lastReturned:Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->access$800(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;ILjava/lang/Object;)V

    .line 149
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;->this$0:Lcom/sun/javafx/collections/ObservableSequentialListWrapper;

    invoke-static {v3}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->access$900(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;)V

    .line 150
    return-void
.end method
