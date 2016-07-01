.class final Lcom/sun/prism/impl/MeshTempState$1;
.super Ljava/lang/ThreadLocal;
.source "MeshTempState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/impl/MeshTempState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/sun/prism/impl/MeshTempState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/MeshTempState$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/sun/prism/impl/MeshTempState;
    .locals 5

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/MeshTempState$1;
    new-instance v1, Lcom/sun/prism/impl/MeshTempState;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sun/prism/impl/MeshTempState;-><init>(Lcom/sun/prism/impl/MeshTempState$1;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/MeshTempState$1;
    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/MeshTempState$1;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/impl/MeshTempState$1;->initialValue()Lcom/sun/prism/impl/MeshTempState;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/MeshTempState$1;
    return-object v0
.end method
