.class Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;
.super Ljava/lang/Object;
.source "BaseResourcePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/impl/BaseResourcePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeakLinkedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field next:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList",
            "<TT;>;"
        }
    .end annotation
.end field

.field final size:J

.field final theResourceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/prism/impl/ManagedResource",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;, "Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 480
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->theResourceRef:Ljava/lang/ref/WeakReference;

    .line 481
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->size:J

    .line 482
    return-void
.end method

.method constructor <init>(Lcom/sun/prism/impl/ManagedResource;JLcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/prism/impl/ManagedResource",
            "<TT;>;J",
            "Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 484
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;, "Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList<TT;>;"
    move-object v1, p1

    .local v1, "mresource":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-wide v2, p2

    .local v2, "size":J
    move-object v4, p4

    .local v4, "next":Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;, "Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList<TT;>;"
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 485
    move-object v5, v0

    new-instance v6, Ljava/lang/ref/WeakReference;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, v5, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->theResourceRef:Ljava/lang/ref/WeakReference;

    .line 486
    move-object v5, v0

    move-wide v6, v2

    iput-wide v6, v5, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->size:J

    .line 487
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->next:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    .line 488
    return-void
.end method


# virtual methods
.method getResource()Lcom/sun/prism/impl/ManagedResource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/prism/impl/ManagedResource",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;, "Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->theResourceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/impl/ManagedResource;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;, "Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList<TT;>;"
    return-object v0
.end method

.method insert(Lcom/sun/prism/impl/ManagedResource;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/prism/impl/ManagedResource",
            "<TT;>;J)V"
        }
    .end annotation

    .prologue
    .line 491
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;, "Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList<TT;>;"
    move-object v1, p1

    .local v1, "mresource":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-wide v2, p2

    .local v2, "size":J
    move-object v4, v0

    new-instance v5, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    move-wide v8, v2

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->next:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;-><init>(Lcom/sun/prism/impl/ManagedResource;JLcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;)V

    iput-object v5, v4, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->next:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    .line 492
    return-void
.end method
