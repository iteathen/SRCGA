.class public Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;
.super Ljava/lang/Object;
.source "XMLElementDecl.java"


# static fields
.field public static final TYPE_ANY:S = 0x0s

.field public static final TYPE_CHILDREN:S = 0x3s

.field public static final TYPE_EMPTY:S = 0x1s

.field public static final TYPE_MIXED:S = 0x2s

.field public static final TYPE_SIMPLE:S = 0x4s


# instance fields
.field public final name:Lorg/apache/xerces/xni/QName;

.field public scope:I

.field public final simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

.field public type:S


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 88
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/xni/QName;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->name:Lorg/apache/xerces/xni/QName;

    .line 91
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->scope:I

    .line 94
    move-object v1, v0

    const/4 v2, -0x1

    iput-short v2, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    .line 98
    move-object v1, v0

    new-instance v2, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->name:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v1}, Lorg/apache/xerces/xni/QName;->clear()V

    .line 121
    move-object v1, v0

    const/4 v2, -0x1

    iput-short v2, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    .line 122
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->scope:I

    .line 123
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    invoke-virtual {v1}, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->clear()V

    .line 124
    return-void
.end method

.method public setValues(Lorg/apache/xerces/xni/QName;ISLcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;)V
    .locals 7

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;
    move-object v1, p1

    .local v1, "name":Lorg/apache/xerces/xni/QName;
    move v2, p2

    .local v2, "scope":I
    move v3, p3

    .local v3, "type":S
    move-object v4, p4

    .local v4, "simpleType":Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->name:Lorg/apache/xerces/xni/QName;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    .line 111
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->scope:I

    .line 112
    move-object v5, v0

    move v6, v3

    iput-short v6, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    .line 113
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->setValues(Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;)V

    .line 114
    return-void
.end method
