.class public Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;
.super Ljava/lang/Object;
.source "XMLAttributeDecl.java"


# instance fields
.field public final name:Lorg/apache/xerces/xni/QName;

.field public optional:Z

.field public final simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 74
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/xni/QName;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lorg/apache/xerces/xni/QName;

    .line 77
    move-object v1, v0

    new-instance v2, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v1}, Lorg/apache/xerces/xni/QName;->clear()V

    .line 101
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    invoke-virtual {v1}, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->clear()V

    .line 102
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->optional:Z

    .line 103
    return-void
.end method

.method public setValues(Lorg/apache/xerces/xni/QName;Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;Z)V
    .locals 6

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;
    move-object v1, p1

    .local v1, "name":Lorg/apache/xerces/xni/QName;
    move-object v2, p2

    .local v2, "simpleType":Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;
    move v3, p3

    .local v3, "optional":Z
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lorg/apache/xerces/xni/QName;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    .line 92
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->setValues(Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;)V

    .line 93
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->optional:Z

    .line 94
    return-void
.end method
