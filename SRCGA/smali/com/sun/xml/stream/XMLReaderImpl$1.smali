.class Lcom/sun/xml/stream/XMLReaderImpl$1;
.super Ljava/lang/Object;
.source "XMLReaderImpl.java"

# interfaces
.implements Ljavax/xml/stream/Location;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/xml/stream/XMLReaderImpl;->getLocation()Ljavax/xml/stream/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field _columnNumber:I

.field _lineNumber:I

.field _offset:I

.field _publicId:Ljava/lang/String;

.field _systemId:Ljava/lang/String;

.field final synthetic this$0:Lcom/sun/xml/stream/XMLReaderImpl;


# direct methods
.method constructor <init>(Lcom/sun/xml/stream/XMLReaderImpl;)V
    .locals 4

    .prologue
    .line 856
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLReaderImpl$1;->this$0:Lcom/sun/xml/stream/XMLReaderImpl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 857
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl$1;->this$0:Lcom/sun/xml/stream/XMLReaderImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/xml/stream/XMLReaderImpl$1;->_systemId:Ljava/lang/String;

    .line 858
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl$1;->this$0:Lcom/sun/xml/stream/XMLReaderImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->getPublicId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/xml/stream/XMLReaderImpl$1;->_publicId:Ljava/lang/String;

    .line 859
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl$1;->this$0:Lcom/sun/xml/stream/XMLReaderImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->getCharacterOffset()I

    move-result v3

    iput v3, v2, Lcom/sun/xml/stream/XMLReaderImpl$1;->_offset:I

    .line 860
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl$1;->this$0:Lcom/sun/xml/stream/XMLReaderImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->getColumnNumber()I

    move-result v3

    iput v3, v2, Lcom/sun/xml/stream/XMLReaderImpl$1;->_columnNumber:I

    .line 861
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl$1;->this$0:Lcom/sun/xml/stream/XMLReaderImpl;

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/sun/xml/stream/XMLReaderImpl$1;->_lineNumber:I

    return-void
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 2

    .prologue
    .line 867
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl$1;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl$1;->_offset:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl$1;
    return v0
.end method

.method public getColumnNumber()I
    .locals 2

    .prologue
    .line 871
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl$1;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl$1;->_columnNumber:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl$1;
    return v0
.end method

.method public getLineNumber()I
    .locals 2

    .prologue
    .line 875
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl$1;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl$1;->_lineNumber:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl$1;
    return v0
.end method

.method public getLocationURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 863
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl$1;->_systemId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl$1;
    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 879
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl$1;->_publicId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl$1;
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 883
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl$1;->_systemId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl$1;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 887
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl$1;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 888
    .local v1, "sbuffer":Ljava/lang/StringBuffer;
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Line number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLReaderImpl$1;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 889
    move-object v2, v1

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 890
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Column number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLReaderImpl$1;->getColumnNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 891
    move-object v2, v1

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 892
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLReaderImpl$1;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 893
    move-object v2, v1

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 894
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Public Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLReaderImpl$1;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 895
    move-object v2, v1

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 896
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Location Uri= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLReaderImpl$1;->getLocationURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 897
    move-object v2, v1

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 898
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CharacterOffset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLReaderImpl$1;->getCharacterOffset()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 899
    move-object v2, v1

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 900
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl$1;
    return-object v0
.end method
