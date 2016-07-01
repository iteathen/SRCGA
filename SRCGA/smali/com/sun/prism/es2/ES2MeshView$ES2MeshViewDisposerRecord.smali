.class Lcom/sun/prism/es2/ES2MeshView$ES2MeshViewDisposerRecord;
.super Ljava/lang/Object;
.source "ES2MeshView.java"

# interfaces
.implements Lcom/sun/prism/impl/Disposer$Record;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/es2/ES2MeshView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ES2MeshViewDisposerRecord"
.end annotation


# instance fields
.field private final context:Lcom/sun/prism/es2/ES2Context;

.field private nativeHandle:J


# direct methods
.method constructor <init>(Lcom/sun/prism/es2/ES2Context;J)V
    .locals 8

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2MeshView$ES2MeshViewDisposerRecord;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/es2/ES2Context;
    move-wide v2, p2

    .local v2, "nativeHandle":J
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 146
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/prism/es2/ES2MeshView$ES2MeshViewDisposerRecord;->context:Lcom/sun/prism/es2/ES2Context;

    .line 147
    move-object v4, v0

    move-wide v5, v2

    iput-wide v5, v4, Lcom/sun/prism/es2/ES2MeshView$ES2MeshViewDisposerRecord;->nativeHandle:J

    .line 148
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2MeshView$ES2MeshViewDisposerRecord;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/prism/es2/ES2MeshView$ES2MeshViewDisposerRecord;->nativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 155
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2MeshView$ES2MeshViewDisposerRecord;->traceDispose()V

    .line 156
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2MeshView$ES2MeshViewDisposerRecord;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/prism/es2/ES2MeshView$ES2MeshViewDisposerRecord;->nativeHandle:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/prism/es2/ES2Context;->releaseES2MeshView(J)V

    .line 157
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/prism/es2/ES2MeshView$ES2MeshViewDisposerRecord;->nativeHandle:J

    .line 159
    :cond_0
    return-void
.end method

.method traceDispose()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method
