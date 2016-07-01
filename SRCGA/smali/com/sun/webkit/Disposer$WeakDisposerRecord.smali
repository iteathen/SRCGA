.class public Lcom/sun/webkit/Disposer$WeakDisposerRecord;
.super Ljava/lang/ref/WeakReference;
.source "Disposer.java"

# interfaces
.implements Lcom/sun/webkit/DisposerRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/webkit/Disposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeakDisposerRecord"
.end annotation


# instance fields
.field private final record:Lcom/sun/webkit/DisposerRecord;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/Disposer$WeakDisposerRecord;
    move-object v1, p1

    .local v1, "referent":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    # getter for: Lcom/sun/webkit/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;
    invoke-static {}, Lcom/sun/webkit/Disposer;->access$400()Ljava/lang/ref/ReferenceQueue;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 146
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/webkit/Disposer$WeakDisposerRecord;->record:Lcom/sun/webkit/DisposerRecord;

    .line 147
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/sun/webkit/DisposerRecord;)V
    .locals 6

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/Disposer$WeakDisposerRecord;
    move-object v1, p1

    .local v1, "referent":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "record":Lcom/sun/webkit/DisposerRecord;
    move-object v3, v0

    move-object v4, v1

    # getter for: Lcom/sun/webkit/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;
    invoke-static {}, Lcom/sun/webkit/Disposer;->access$400()Ljava/lang/ref/ReferenceQueue;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 151
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/webkit/Disposer$WeakDisposerRecord;->record:Lcom/sun/webkit/DisposerRecord;

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/sun/webkit/DisposerRecord;Lcom/sun/webkit/Disposer$1;)V
    .locals 7

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/Disposer$WeakDisposerRecord;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/webkit/DisposerRecord;
    move-object v3, p3

    .local v3, "x2":Lcom/sun/webkit/Disposer$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/webkit/Disposer$WeakDisposerRecord;-><init>(Ljava/lang/Object;Lcom/sun/webkit/DisposerRecord;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/Disposer$WeakDisposerRecord;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/webkit/Disposer$WeakDisposerRecord;->record:Lcom/sun/webkit/DisposerRecord;

    invoke-interface {v1}, Lcom/sun/webkit/DisposerRecord;->dispose()V

    .line 159
    return-void
.end method
