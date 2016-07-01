.class public Lcom/sun/xml/stream/writers/XMLOutputSource;
.super Ljava/lang/Object;
.source "XMLOutputSource.java"


# instance fields
.field os:Ljava/io/OutputStream;

.field systemId:Ljava/lang/String;

.field writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLOutputSource;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method
