.class public Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;
.super Ljava/lang/Object;
.source "XMLNotationDecl.java"


# instance fields
.field public baseSystemId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;->name:Ljava/lang/String;

    .line 105
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;->publicId:Ljava/lang/String;

    .line 106
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;->systemId:Ljava/lang/String;

    .line 107
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;->baseSystemId:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "publicId":Ljava/lang/String;
    move-object v3, p3

    .local v3, "systemId":Ljava/lang/String;
    move-object v4, p4

    .local v4, "baseSystemId":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;->name:Ljava/lang/String;

    .line 95
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;->publicId:Ljava/lang/String;

    .line 96
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;->systemId:Ljava/lang/String;

    .line 97
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;->baseSystemId:Ljava/lang/String;

    .line 98
    return-void
.end method
