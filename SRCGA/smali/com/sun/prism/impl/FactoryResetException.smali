.class public Lcom/sun/prism/impl/FactoryResetException;
.super Ljava/lang/RuntimeException;
.source "FactoryResetException.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/FactoryResetException;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method
