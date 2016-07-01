.class public Lorg/apache/xerces/util/URI$MalformedURIException;
.super Ljava/io/IOException;
.source "URI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/URI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MalformedURIException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI$MalformedURIException;
    move-object v1, v0

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI$MalformedURIException;
    move-object v1, p1

    .local v1, "p_msg":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 123
    return-void
.end method
