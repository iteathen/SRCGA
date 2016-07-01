.class public Lcom/sun/javafx/util/WeakReferenceQueue;
.super Ljava/lang/Object;
.source "WeakReferenceQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final garbage:Ljava/lang/ref/ReferenceQueue;

.field private head:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

.field size:I

.field private strongRef:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/util/WeakReferenceQueue;, "Lcom/sun/javafx/util/WeakReferenceQueue<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v1, v0

    new-instance v2, Ljava/lang/ref/ReferenceQueue;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/util/WeakReferenceQueue;->garbage:Ljava/lang/ref/ReferenceQueue;

    .line 53
    move-object v1, v0

    new-instance v2, Ljava/lang/Object;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/util/WeakReferenceQueue;->strongRef:Ljava/lang/Object;

    .line 54
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/util/WeakReferenceQueue;->strongRef:Ljava/lang/Object;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/util/WeakReferenceQueue;->garbage:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v2, v1, Lcom/sun/javafx/util/WeakReferenceQueue;->head:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    .line 59
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/util/WeakReferenceQueue;->size:I

    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/util/WeakReferenceQueue;)Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/util/WeakReferenceQueue;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/util/WeakReferenceQueue;->head:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/util/WeakReferenceQueue;
    return-object v0
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
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/util/WeakReferenceQueue;, "Lcom/sun/javafx/util/WeakReferenceQueue<TE;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;, "TE;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/util/WeakReferenceQueue;->cleanup()V

    .line 64
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/util/WeakReferenceQueue;->size:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/util/WeakReferenceQueue;->size:I

    .line 65
    new-instance v2, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/util/WeakReferenceQueue;->garbage:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/util/WeakReferenceQueue;->head:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    iget-object v3, v3, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->prev:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->insert(Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;)V

    .line 66
    return-void
.end method

.method public cleanup()V
    .locals 6

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/util/WeakReferenceQueue;, "Lcom/sun/javafx/util/WeakReferenceQueue<TE;>;"
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/util/WeakReferenceQueue;->garbage:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v1, v3

    .local v1, "entry":Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;
    if-eqz v2, :cond_0

    .line 86
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/util/WeakReferenceQueue;->size:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/javafx/util/WeakReferenceQueue;->size:I

    .line 87
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->remove()V

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/util/WeakReferenceQueue;, "Lcom/sun/javafx/util/WeakReferenceQueue<TE;>;"
    new-instance v1, Lcom/sun/javafx/util/WeakReferenceQueue$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/util/WeakReferenceQueue$1;-><init>(Lcom/sun/javafx/util/WeakReferenceQueue;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/util/WeakReferenceQueue;, "Lcom/sun/javafx/util/WeakReferenceQueue<TE;>;"
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/util/WeakReferenceQueue;, "Lcom/sun/javafx/util/WeakReferenceQueue<TE;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;, "TE;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/util/WeakReferenceQueue;->cleanup()V

    .line 71
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/util/WeakReferenceQueue;->head:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    iget-object v4, v4, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->next:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    move-object v2, v4

    .line 72
    .local v2, "entry":Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;
    :goto_0
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/util/WeakReferenceQueue;->head:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    if-eq v4, v5, :cond_1

    .line 73
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 74
    .local v3, "other":Ljava/lang/Object;
    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 75
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/sun/javafx/util/WeakReferenceQueue;->size:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/sun/javafx/util/WeakReferenceQueue;->size:I

    .line 76
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->remove()V

    .line 77
    .line 81
    .end local v3    # "other":Ljava/lang/Object;
    :goto_1
    return-void

    .line 79
    .restart local v3    # "other":Ljava/lang/Object;
    :cond_0
    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->next:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    move-object v2, v4

    .line 80
    goto :goto_0

    .line 81
    .end local v3    # "other":Ljava/lang/Object;
    :cond_1
    goto :goto_1
.end method
