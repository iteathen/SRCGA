.class Lcom/sun/xml/stream/StaxErrorReporter$1;
.super Ljava/lang/Object;
.source "StaxErrorReporter.java"

# interfaces
.implements Ljavax/xml/stream/Location;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/xml/stream/StaxErrorReporter;->convertToStaxLocation(Lorg/apache/xerces/xni/XMLLocator;)Ljavax/xml/stream/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/xml/stream/StaxErrorReporter;

.field final synthetic val$location:Lorg/apache/xerces/xni/XMLLocator;


# direct methods
.method constructor <init>(Lcom/sun/xml/stream/StaxErrorReporter;Lorg/apache/xerces/xni/XMLLocator;)V
    .locals 5

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxErrorReporter$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/xml/stream/StaxErrorReporter;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/xml/stream/StaxErrorReporter$1;->this$0:Lcom/sun/xml/stream/StaxErrorReporter;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/xml/stream/StaxErrorReporter$1;->val$location:Lorg/apache/xerces/xni/XMLLocator;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxErrorReporter$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/StaxErrorReporter$1;->val$location:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/StaxErrorReporter$1;
    return v0
.end method

.method public getColumnNumber()I
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxErrorReporter$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/StaxErrorReporter$1;->val$location:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/StaxErrorReporter$1;
    return v0
.end method

.method public getLineNumber()I
    .locals 2

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxErrorReporter$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/StaxErrorReporter$1;->val$location:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/StaxErrorReporter$1;
    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxErrorReporter$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/StaxErrorReporter$1;->val$location:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLLocator;->getPublicId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/StaxErrorReporter$1;
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/StaxErrorReporter$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/StaxErrorReporter$1;->val$location:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/StaxErrorReporter$1;
    return-object v0
.end method
