.class Lcom/sun/prism/es2/ES2PhongMaterial$ES2PhongMaterialDisposerRecord;
.super Ljava/lang/Object;
.source "ES2PhongMaterial.java"

# interfaces
.implements Lcom/sun/prism/impl/Disposer$Record;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/es2/ES2PhongMaterial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ES2PhongMaterialDisposerRecord"
.end annotation


# instance fields
.field private final context:Lcom/sun/prism/es2/ES2Context;

.field private nativeHandle:J


# direct methods
.method constructor <init>(Lcom/sun/prism/es2/ES2Context;J)V
    .locals 8

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2PhongMaterial$ES2PhongMaterialDisposerRecord;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/es2/ES2Context;
    move-wide v2, p2

    .local v2, "nativeHandle":J
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 138
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/prism/es2/ES2PhongMaterial$ES2PhongMaterialDisposerRecord;->context:Lcom/sun/prism/es2/ES2Context;

    .line 139
    move-object v4, v0

    move-wide v5, v2

    iput-wide v5, v4, Lcom/sun/prism/es2/ES2PhongMaterial$ES2PhongMaterialDisposerRecord;->nativeHandle:J

    .line 140
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2PhongMaterial$ES2PhongMaterialDisposerRecord;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/prism/es2/ES2PhongMaterial$ES2PhongMaterialDisposerRecord;->nativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 147
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2PhongMaterial$ES2PhongMaterialDisposerRecord;->traceDispose()V

    .line 148
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2PhongMaterial$ES2PhongMaterialDisposerRecord;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/prism/es2/ES2PhongMaterial$ES2PhongMaterialDisposerRecord;->nativeHandle:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/prism/es2/ES2Context;->releaseES2PhongMaterial(J)V

    .line 149
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/prism/es2/ES2PhongMaterial$ES2PhongMaterialDisposerRecord;->nativeHandle:J

    .line 151
    :cond_0
    return-void
.end method

.method traceDispose()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method
