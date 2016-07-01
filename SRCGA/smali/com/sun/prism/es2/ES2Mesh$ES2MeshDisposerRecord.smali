.class Lcom/sun/prism/es2/ES2Mesh$ES2MeshDisposerRecord;
.super Ljava/lang/Object;
.source "ES2Mesh.java"

# interfaces
.implements Lcom/sun/prism/impl/Disposer$Record;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/es2/ES2Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ES2MeshDisposerRecord"
.end annotation


# instance fields
.field private final context:Lcom/sun/prism/es2/ES2Context;

.field private nativeHandle:J


# direct methods
.method constructor <init>(Lcom/sun/prism/es2/ES2Context;J)V
    .locals 8

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Mesh$ES2MeshDisposerRecord;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/es2/ES2Context;
    move-wide v2, p2

    .local v2, "nativeHandle":J
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 86
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/prism/es2/ES2Mesh$ES2MeshDisposerRecord;->context:Lcom/sun/prism/es2/ES2Context;

    .line 87
    move-object v4, v0

    move-wide v5, v2

    iput-wide v5, v4, Lcom/sun/prism/es2/ES2Mesh$ES2MeshDisposerRecord;->nativeHandle:J

    .line 88
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Mesh$ES2MeshDisposerRecord;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/prism/es2/ES2Mesh$ES2MeshDisposerRecord;->nativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 95
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2Mesh$ES2MeshDisposerRecord;->traceDispose()V

    .line 96
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2Mesh$ES2MeshDisposerRecord;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/prism/es2/ES2Mesh$ES2MeshDisposerRecord;->nativeHandle:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/prism/es2/ES2Context;->releaseES2Mesh(J)V

    .line 97
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/prism/es2/ES2Mesh$ES2MeshDisposerRecord;->nativeHandle:J

    .line 99
    :cond_0
    return-void
.end method

.method traceDispose()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
