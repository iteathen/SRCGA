.class Lcom/sun/javafx/util/WeakReferenceQueue$1;
.super Ljava/lang/Object;
.source "WeakReferenceQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/util/WeakReferenceQueue;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private index:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

.field private next:Ljava/lang/Object;

.field final synthetic this$0:Lcom/sun/javafx/util/WeakReferenceQueue;


# direct methods
.method constructor <init>(Lcom/sun/javafx/util/WeakReferenceQueue;)V
    .locals 4

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/util/WeakReferenceQueue$1;, "Lcom/sun/javafx/util/WeakReferenceQueue$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/util/WeakReferenceQueue;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/util/WeakReferenceQueue$1;->this$0:Lcom/sun/javafx/util/WeakReferenceQueue;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 93
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/util/WeakReferenceQueue$1;->this$0:Lcom/sun/javafx/util/WeakReferenceQueue;

    invoke-static {v3}, Lcom/sun/javafx/util/WeakReferenceQueue;->access$000(Lcom/sun/javafx/util/WeakReferenceQueue;)Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/util/WeakReferenceQueue$1;->index:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    .line 94
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/util/WeakReferenceQueue$1;->next:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 6

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/util/WeakReferenceQueue$1;, "Lcom/sun/javafx/util/WeakReferenceQueue$1;"
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/util/WeakReferenceQueue$1;->next:Ljava/lang/Object;

    .line 98
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/util/WeakReferenceQueue$1;->next:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 99
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/util/WeakReferenceQueue$1;->index:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    iget-object v2, v2, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->prev:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    move-object v1, v2

    .line 100
    .local v1, "nextIndex":Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/util/WeakReferenceQueue$1;->this$0:Lcom/sun/javafx/util/WeakReferenceQueue;

    invoke-static {v3}, Lcom/sun/javafx/util/WeakReferenceQueue;->access$000(Lcom/sun/javafx/util/WeakReferenceQueue;)Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 101
    .line 110
    .end local v1    # "nextIndex":Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/util/WeakReferenceQueue$1;->next:Ljava/lang/Object;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/util/WeakReferenceQueue$1;, "Lcom/sun/javafx/util/WeakReferenceQueue$1;"
    return v0

    .line 103
    .restart local v0    # "this":Lcom/sun/javafx/util/WeakReferenceQueue$1;, "Lcom/sun/javafx/util/WeakReferenceQueue$1;"
    .restart local v1    # "nextIndex":Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/util/WeakReferenceQueue$1;->next:Ljava/lang/Object;

    .line 104
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/util/WeakReferenceQueue$1;->next:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 105
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/util/WeakReferenceQueue$1;->this$0:Lcom/sun/javafx/util/WeakReferenceQueue;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/util/WeakReferenceQueue;->size:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/javafx/util/WeakReferenceQueue;->size:I

    .line 106
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->remove()V

    .line 108
    :cond_2
    goto :goto_0

    .line 110
    .end local v1    # "nextIndex":Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/util/WeakReferenceQueue$1;, "Lcom/sun/javafx/util/WeakReferenceQueue$1;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/util/WeakReferenceQueue$1;->hasNext()Z

    move-result v1

    .line 116
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/util/WeakReferenceQueue$1;->index:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    iget-object v2, v2, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->prev:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    iput-object v2, v1, Lcom/sun/javafx/util/WeakReferenceQueue$1;->index:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    .line 117
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/util/WeakReferenceQueue$1;->next:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/util/WeakReferenceQueue$1;, "Lcom/sun/javafx/util/WeakReferenceQueue$1;"
    return-object v0
.end method

.method public remove()V
    .locals 6

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/util/WeakReferenceQueue$1;, "Lcom/sun/javafx/util/WeakReferenceQueue$1;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/util/WeakReferenceQueue$1;->index:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/util/WeakReferenceQueue$1;->this$0:Lcom/sun/javafx/util/WeakReferenceQueue;

    invoke-static {v3}, Lcom/sun/javafx/util/WeakReferenceQueue;->access$000(Lcom/sun/javafx/util/WeakReferenceQueue;)Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 122
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/util/WeakReferenceQueue$1;->index:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    iget-object v2, v2, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->next:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    move-object v1, v2

    .line 123
    .local v1, "nextIndex":Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/util/WeakReferenceQueue$1;->this$0:Lcom/sun/javafx/util/WeakReferenceQueue;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/util/WeakReferenceQueue;->size:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/javafx/util/WeakReferenceQueue;->size:I

    .line 124
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/util/WeakReferenceQueue$1;->index:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    invoke-virtual {v2}, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->remove()V

    .line 125
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/util/WeakReferenceQueue$1;->index:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    .line 127
    .end local v1    # "nextIndex":Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;
    :cond_0
    return-void
.end method
