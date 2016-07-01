.class public Lsun/misc/CEStreamExhausted;
.super Ljava/io/IOException;
.source "CEStreamExhausted.java"


# static fields
.field static final serialVersionUID:J = -0x51ba59aa06550340L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lsun/misc/CEStreamExhausted;
    move-object v1, v0

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    return-void
.end method
