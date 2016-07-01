.class public Lsun/misc/CEFormatException;
.super Ljava/io/IOException;
.source "CEFormatException.java"


# static fields
.field static final serialVersionUID:J = -0x631340ed0628070aL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lsun/misc/CEFormatException;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method
