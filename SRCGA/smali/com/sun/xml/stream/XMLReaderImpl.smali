.class public Lcom/sun/xml/stream/XMLReaderImpl;
.super Ljava/lang/Object;
.source "XMLReaderImpl.java"

# interfaces
.implements Ljavax/xml/stream/XMLStreamReader;


# static fields
.field static final DEBUG:Z = false

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"


# instance fields
.field private fBindNamespaces:Z

.field private fDTDDecl:Ljava/lang/String;

.field protected fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

.field protected fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

.field protected fErrorReporter:Lcom/sun/xml/stream/StaxErrorReporter;

.field private fEventType:I

.field protected fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

.field protected fNamespaceContextWrapper:Lorg/apache/xerces/util/NamespaceContextWrapper;

.field protected fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

.field private fReuse:Z

.field protected fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

.field private fSymbolTable:Lorg/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/sun/xml/stream/PropertyManager;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, p1

    .local v1, "inputStream":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "props":Lcom/sun/xml/stream/PropertyManager;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 103
    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/util/SymbolTable;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 106
    move-object v4, v0

    new-instance v5, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    .line 110
    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/util/NamespaceContextWrapper;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getNamespaceContext()Lorg/apache/xerces/xni/NamespaceContext;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/xerces/util/NamespaceContextWrapper;-><init>(Lorg/apache/xerces/xni/NamespaceContext;)V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fNamespaceContextWrapper:Lorg/apache/xerces/util/NamespaceContextWrapper;

    .line 111
    move-object v4, v0

    new-instance v5, Lcom/sun/xml/stream/XMLEntityManager;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Lcom/sun/xml/stream/XMLEntityManager;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    .line 112
    move-object v4, v0

    new-instance v5, Lcom/sun/xml/stream/StaxErrorReporter;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Lcom/sun/xml/stream/StaxErrorReporter;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fErrorReporter:Lcom/sun/xml/stream/StaxErrorReporter;

    .line 116
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    .line 119
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    .line 121
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    .line 128
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fReuse:Z

    .line 129
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fBindNamespaces:Z

    .line 130
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    .line 138
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLReaderImpl;->init(Lcom/sun/xml/stream/PropertyManager;)V

    .line 140
    new-instance v4, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v1

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v3, v4

    .line 142
    .local v3, "inputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLReaderImpl;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Lcom/sun/xml/stream/PropertyManager;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, p1

    .local v1, "inputStream":Ljava/io/InputStream;
    move-object/from16 v2, p2

    .local v2, "encoding":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "props":Lcom/sun/xml/stream/PropertyManager;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 103
    move-object v5, v0

    new-instance v6, Lorg/apache/xerces/util/SymbolTable;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v6, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 106
    move-object v5, v0

    new-instance v6, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v6, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    .line 110
    move-object v5, v0

    new-instance v6, Lorg/apache/xerces/util/NamespaceContextWrapper;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getNamespaceContext()Lorg/apache/xerces/xni/NamespaceContext;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/xerces/util/NamespaceContextWrapper;-><init>(Lorg/apache/xerces/xni/NamespaceContext;)V

    iput-object v6, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fNamespaceContextWrapper:Lorg/apache/xerces/util/NamespaceContextWrapper;

    .line 111
    move-object v5, v0

    new-instance v6, Lcom/sun/xml/stream/XMLEntityManager;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Lcom/sun/xml/stream/XMLEntityManager;-><init>()V

    iput-object v6, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    .line 112
    move-object v5, v0

    new-instance v6, Lcom/sun/xml/stream/StaxErrorReporter;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Lcom/sun/xml/stream/StaxErrorReporter;-><init>()V

    iput-object v6, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fErrorReporter:Lcom/sun/xml/stream/StaxErrorReporter;

    .line 116
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    .line 119
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    .line 121
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    .line 128
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fReuse:Z

    .line 129
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fBindNamespaces:Z

    .line 130
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    .line 166
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/XMLReaderImpl;->init(Lcom/sun/xml/stream/PropertyManager;)V

    .line 168
    new-instance v5, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Ljava/io/BufferedInputStream;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v1

    invoke-direct {v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v11, v2

    invoke-direct/range {v6 .. v11}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v4, v5

    .line 170
    .local v4, "inputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/XMLReaderImpl;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lcom/sun/xml/stream/PropertyManager;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, p1

    .local v1, "reader":Ljava/io/Reader;
    move-object v2, p2

    .local v2, "props":Lcom/sun/xml/stream/PropertyManager;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 103
    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/util/SymbolTable;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 106
    move-object v4, v0

    new-instance v5, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    .line 110
    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/util/NamespaceContextWrapper;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getNamespaceContext()Lorg/apache/xerces/xni/NamespaceContext;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/xerces/util/NamespaceContextWrapper;-><init>(Lorg/apache/xerces/xni/NamespaceContext;)V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fNamespaceContextWrapper:Lorg/apache/xerces/util/NamespaceContextWrapper;

    .line 111
    move-object v4, v0

    new-instance v5, Lcom/sun/xml/stream/XMLEntityManager;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Lcom/sun/xml/stream/XMLEntityManager;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    .line 112
    move-object v4, v0

    new-instance v5, Lcom/sun/xml/stream/StaxErrorReporter;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Lcom/sun/xml/stream/StaxErrorReporter;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fErrorReporter:Lcom/sun/xml/stream/StaxErrorReporter;

    .line 116
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    .line 119
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    .line 121
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    .line 128
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fReuse:Z

    .line 129
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fBindNamespaces:Z

    .line 130
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    .line 179
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLReaderImpl;->init(Lcom/sun/xml/stream/PropertyManager;)V

    .line 182
    new-instance v4, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Ljava/io/BufferedReader;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v1

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    move-object v3, v4

    .line 184
    .local v3, "inputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLReaderImpl;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/xml/stream/PropertyManager;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, p1

    .local v1, "systemid":Ljava/lang/String;
    move-object v2, p2

    .local v2, "props":Lcom/sun/xml/stream/PropertyManager;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 103
    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/util/SymbolTable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 106
    move-object v4, v0

    new-instance v5, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    .line 110
    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/util/NamespaceContextWrapper;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getNamespaceContext()Lorg/apache/xerces/xni/NamespaceContext;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/xerces/util/NamespaceContextWrapper;-><init>(Lorg/apache/xerces/xni/NamespaceContext;)V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fNamespaceContextWrapper:Lorg/apache/xerces/util/NamespaceContextWrapper;

    .line 111
    move-object v4, v0

    new-instance v5, Lcom/sun/xml/stream/XMLEntityManager;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Lcom/sun/xml/stream/XMLEntityManager;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    .line 112
    move-object v4, v0

    new-instance v5, Lcom/sun/xml/stream/StaxErrorReporter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Lcom/sun/xml/stream/StaxErrorReporter;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fErrorReporter:Lcom/sun/xml/stream/StaxErrorReporter;

    .line 116
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    .line 119
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    .line 121
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    .line 128
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fReuse:Z

    .line 129
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fBindNamespaces:Z

    .line 130
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    .line 151
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLReaderImpl;->init(Lcom/sun/xml/stream/PropertyManager;)V

    .line 153
    new-instance v4, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move-object v7, v1

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 155
    .local v3, "inputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/XMLReaderImpl;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/parser/XMLInputSource;Lcom/sun/xml/stream/PropertyManager;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, p1

    .local v1, "inputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v2, p2

    .local v2, "props":Lcom/sun/xml/stream/PropertyManager;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 103
    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v4, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 106
    move-object v3, v0

    new-instance v4, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v4, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    .line 110
    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/util/NamespaceContextWrapper;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getNamespaceContext()Lorg/apache/xerces/xni/NamespaceContext;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/xerces/util/NamespaceContextWrapper;-><init>(Lorg/apache/xerces/xni/NamespaceContext;)V

    iput-object v4, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fNamespaceContextWrapper:Lorg/apache/xerces/util/NamespaceContextWrapper;

    .line 111
    move-object v3, v0

    new-instance v4, Lcom/sun/xml/stream/XMLEntityManager;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/sun/xml/stream/XMLEntityManager;-><init>()V

    iput-object v4, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    .line 112
    move-object v3, v0

    new-instance v4, Lcom/sun/xml/stream/StaxErrorReporter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/sun/xml/stream/StaxErrorReporter;-><init>()V

    iput-object v4, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fErrorReporter:Lcom/sun/xml/stream/StaxErrorReporter;

    .line 116
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    .line 119
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    .line 121
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    .line 128
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fReuse:Z

    .line 129
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fBindNamespaces:Z

    .line 130
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    .line 193
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLReaderImpl;->init(Lcom/sun/xml/stream/PropertyManager;)V

    .line 195
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLReaderImpl;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    .line 196
    return-void
.end method

.method static final getEventTypeString(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 613
    move v0, p0

    .local v0, "eventType":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN_EVENT_TYPE , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "eventType":I
    :goto_0
    return-object v0

    .line 615
    .restart local v0    # "eventType":I
    :pswitch_0
    const-string v1, "START_ELEMENT"

    move-object v0, v1

    goto :goto_0

    .line 617
    :pswitch_1
    const-string v1, "END_ELEMENT"

    move-object v0, v1

    goto :goto_0

    .line 619
    :pswitch_2
    const-string v1, "PROCESSING_INSTRUCTION"

    move-object v0, v1

    goto :goto_0

    .line 621
    :pswitch_3
    const-string v1, "CHARACTERS"

    move-object v0, v1

    goto :goto_0

    .line 623
    :pswitch_4
    const-string v1, "COMMENT"

    move-object v0, v1

    goto :goto_0

    .line 625
    :pswitch_5
    const-string v1, "START_DOCUMENT"

    move-object v0, v1

    goto :goto_0

    .line 627
    :pswitch_6
    const-string v1, "END_DOCUMENT"

    move-object v0, v1

    goto :goto_0

    .line 629
    :pswitch_7
    const-string v1, "ENTITY_REFERENCE"

    move-object v0, v1

    goto :goto_0

    .line 631
    :pswitch_8
    const-string v1, "ATTRIBUTE"

    move-object v0, v1

    goto :goto_0

    .line 633
    :pswitch_9
    const-string v1, "DTD"

    move-object v0, v1

    goto :goto_0

    .line 635
    :pswitch_a
    const-string v1, "CDATA"

    move-object v0, v1

    goto :goto_0

    .line 637
    :pswitch_b
    const-string v1, "SPACE"

    move-object v0, v1

    goto :goto_0

    .line 613
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method static pr(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1295
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1296
    return-void
.end method


# virtual methods
.method public canReuse()Z
    .locals 2

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fReuse:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fReuse:Z

    .line 314
    return-void
.end method

.method convertSAXInputSource2XMLInputSource(Lorg/xml/sax/InputSource;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 11

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, p1

    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    new-instance v5, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    .line 233
    invoke-virtual {v7}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v7

    move-object v8, v1

    .line 234
    invoke-virtual {v8}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 236
    .local v2, "xmlInputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v5, v1

    invoke-virtual {v5}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v3, v5

    .line 238
    .local v3, "inputStream":Ljava/io/InputStream;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    instance-of v5, v5, Ljava/io/ByteArrayInputStream;

    if-nez v5, :cond_0

    move-object v5, v3

    instance-of v5, v5, Ljava/io/BufferedInputStream;

    if-nez v5, :cond_0

    .line 240
    new-instance v5, Ljava/io/BufferedInputStream;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v5

    .line 242
    :cond_0
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 243
    move-object v5, v1

    invoke-virtual {v5}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v5

    move-object v4, v5

    .line 245
    .local v4, "reader":Ljava/io/Reader;
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    instance-of v5, v5, Ljava/io/BufferedReader;

    if-nez v5, :cond_1

    move-object v5, v4

    instance-of v5, v5, Ljava/io/CharArrayReader;

    if-nez v5, :cond_1

    move-object v5, v4

    instance-of v5, v5, Ljava/io/StringReader;

    if-nez v5, :cond_1

    .line 248
    new-instance v5, Ljava/io/BufferedReader;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v5

    .line 250
    :cond_1
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 251
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    .line 253
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0
.end method

.method public convertXNIQNametoJavaxQName(Lorg/apache/xerces/xni/QName;)Ljavax/xml/namespace/QName;
    .locals 8

    .prologue
    .line 1250
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, p1

    .local v1, "qname":Lorg/apache/xerces/xni/QName;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 1255
    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :goto_0
    return-object v0

    .line 1252
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1253
    new-instance v2, Ljavax/xml/namespace/QName;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 1255
    :cond_1
    new-instance v2, Ljavax/xml/namespace/QName;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v6, v1

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public getAttributeCount()I
    .locals 6

    .prologue
    .line 654
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 655
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->getLength()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return v0

    .line 657
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current state is not among the states "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    .line 658
    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    .line 659
    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "valid for getAttributeCount()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeLocalName(I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 688
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 689
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0

    .line 691
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current state is not among the states "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    .line 692
    invoke-static {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    .line 693
    invoke-static {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "valid for getAttributeLocalName()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAttributeName(I)Ljavax/xml/namespace/QName;
    .locals 7

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 673
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->getQualifiedName(I)Lorg/apache/xerces/xni/QName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLReaderImpl;->convertXNIQNametoJavaxQName(Lorg/apache/xerces/xni/QName;)Ljavax/xml/namespace/QName;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0

    .line 675
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current state is not among the states "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    .line 676
    invoke-static {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    .line 677
    invoke-static {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "valid for getAttributeName()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 706
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 707
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->getURI(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0

    .line 709
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current state is not among the states "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    .line 710
    invoke-static {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    .line 711
    invoke-static {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "valid for getAttributeNamespace()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 725
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 726
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->getPrefix(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0

    .line 728
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current state is not among the states "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    .line 729
    invoke-static {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    .line 730
    invoke-static {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "valid for getAttributePrefix()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAttributeQName(I)Ljavax/xml/namespace/QName;
    .locals 9

    .prologue
    .line 743
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move v1, p1

    .local v1, "index":I
    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 745
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 746
    .local v2, "localName":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->getURI(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 747
    .local v3, "uri":Ljava/lang/String;
    new-instance v4, Ljavax/xml/namespace/QName;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0

    .line 749
    .end local v2    # "localName":Ljava/lang/String;
    .end local v3    # "uri":Ljava/lang/String;
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current state is not among the states "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    .line 750
    invoke-static {v7}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    .line 751
    invoke-static {v7}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "valid for getAttributeQName()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 764
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 765
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->getType(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0

    .line 767
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current state is not among the states "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    .line 768
    invoke-static {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    .line 769
    invoke-static {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "valid for getAttributeType()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 783
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 784
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->getValue(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0

    .line 786
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current state is not among the states "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    .line 787
    invoke-static {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    .line 788
    invoke-static {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "valid for getAttributeValue()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 801
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 802
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0

    .line 804
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current state is not among the states "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    .line 805
    invoke-static {v6}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    .line 806
    invoke-static {v6}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "valid for getAttributeValue()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 2

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0
.end method

.method public getColumnNumber()I
    .locals 2

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->getColumnNumber()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return v0
.end method

.method public getElementText()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 819
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 820
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "parser must be on START_ELEMENT to read next text"

    move-object v6, v0

    .line 821
    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLReaderImpl;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v3

    .line 823
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLReaderImpl;->next()I

    move-result v3

    move v1, v3

    .line 824
    .local v1, "eventType":I
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v3

    .line 825
    .local v2, "content":Ljava/lang/StringBuffer;
    :goto_0
    move v3, v1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    .line 826
    move v3, v1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    move v3, v1

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    move v3, v1

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    move v3, v1

    const/16 v4, 0x9

    if-ne v3, v4, :cond_3

    .line 830
    :cond_1
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 843
    :cond_2
    :goto_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLReaderImpl;->next()I

    move-result v3

    move v1, v3

    goto :goto_0

    .line 831
    :cond_3
    move v3, v1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    move v3, v1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    goto :goto_1

    .line 834
    :cond_4
    move v3, v1

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    .line 835
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "unexpected end of document when reading element text content"

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3

    .line 836
    :cond_5
    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 837
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "elementGetText() function expects text only elment but START_ELEMENT was encountered."

    move-object v6, v0

    .line 838
    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLReaderImpl;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v3

    .line 840
    :cond_6
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected event type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    .line 841
    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLReaderImpl;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v3

    .line 845
    :cond_7
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->getEncoding()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0
.end method

.method protected getEntityDecls()Ljava/util/List;
    .locals 12

    .prologue
    .line 1299
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v8, v0

    iget v8, v8, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v9, 0xb

    if-ne v8, v9, :cond_2

    .line 1300
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLEntityManager;->getEntityStore()Lcom/sun/xml/stream/XMLEntityStorage;

    move-result-object v8

    move-object v1, v8

    .line 1301
    .local v1, "entityStore":Lcom/sun/xml/stream/XMLEntityStorage;
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLEntityStorage;->getDeclaredEntities()Ljava/util/Hashtable;

    move-result-object v8

    move-object v2, v8

    .line 1302
    .local v2, "ht":Ljava/util/Hashtable;
    const/4 v8, 0x0

    move-object v3, v8

    .line 1303
    .local v3, "list":Ljava/util/ArrayList;
    move-object v8, v2

    if-eqz v8, :cond_1

    .line 1304
    const/4 v8, 0x0

    move-object v4, v8

    .line 1305
    .local v4, "decl":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v2

    invoke-virtual {v10}, Ljava/util/Hashtable;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v8

    .line 1306
    move-object v8, v2

    invoke-virtual {v8}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v8

    move-object v5, v8

    .line 1307
    .local v5, "enu":Ljava/util/Enumeration;
    :goto_0
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1308
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v6, v8

    .line 1309
    .local v6, "key":Ljava/lang/String;
    move-object v8, v2

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/xml/stream/Entity;

    move-object v7, v8

    .line 1310
    .local v7, "en":Lcom/sun/xml/stream/Entity;
    new-instance v8, Lcom/sun/xml/stream/events/EntityDeclarationImpl;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lcom/sun/xml/stream/events/EntityDeclarationImpl;-><init>()V

    move-object v4, v8

    .line 1311
    move-object v8, v4

    move-object v9, v6

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->setEntityName(Ljava/lang/String;)V

    .line 1312
    move-object v8, v7

    invoke-virtual {v8}, Lcom/sun/xml/stream/Entity;->isExternal()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1313
    move-object v8, v4

    move-object v9, v7

    check-cast v9, Lcom/sun/xml/stream/Entity$ExternalEntity;

    iget-object v9, v9, Lcom/sun/xml/stream/Entity$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->setXMLResourceIdentifier(Lorg/apache/xerces/xni/XMLResourceIdentifier;)V

    .line 1314
    move-object v8, v4

    move-object v9, v7

    check-cast v9, Lcom/sun/xml/stream/Entity$ExternalEntity;

    iget-object v9, v9, Lcom/sun/xml/stream/Entity$ExternalEntity;->notation:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->setNotationName(Ljava/lang/String;)V

    .line 1317
    :goto_1
    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 1318
    goto :goto_0

    .line 1316
    :cond_0
    move-object v8, v4

    move-object v9, v7

    check-cast v9, Lcom/sun/xml/stream/Entity$InternalEntity;

    iget-object v9, v9, Lcom/sun/xml/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/events/EntityDeclarationImpl;->setEntityReplacementText(Ljava/lang/String;)V

    goto :goto_1

    .line 1320
    .end local v4    # "decl":Lcom/sun/xml/stream/events/EntityDeclarationImpl;
    .end local v5    # "enu":Ljava/util/Enumeration;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "en":Lcom/sun/xml/stream/Entity;
    :cond_1
    move-object v8, v3

    move-object v0, v8

    .line 1322
    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :goto_2
    return-object v0

    .end local v1    # "entityStore":Lcom/sun/xml/stream/XMLEntityStorage;
    .end local v2    # "ht":Ljava/util/Hashtable;
    .end local v3    # "list":Ljava/util/ArrayList;
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_2
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_2
.end method

.method public getEventType()I
    .locals 2

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return v0
.end method

.method public getLineNumber()I
    .locals 2

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->getLineNumber()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 357
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getElementQName()Lorg/apache/xerces/xni/QName;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v0, v1

    .line 359
    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :goto_0
    return-object v0

    .line 358
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    .line 359
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getEntityName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 361
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method getLocalName() cannot be called for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    .line 362
    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " event."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLocation()Ljavax/xml/stream/Location;
    .locals 5

    .prologue
    .line 856
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    new-instance v1, Lcom/sun/xml/stream/XMLReaderImpl$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/xml/stream/XMLReaderImpl$1;-><init>(Lcom/sun/xml/stream/XMLReaderImpl;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 6

    .prologue
    .line 910
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 911
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getElementQName()Lorg/apache/xerces/xni/QName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLReaderImpl;->convertXNIQNametoJavaxQName(Lorg/apache/xerces/xni/QName;)Ljavax/xml/namespace/QName;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0

    .line 913
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal to call getName() when event type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    .line 914
    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Valid states are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    .line 915
    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    .line 916
    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 2

    .prologue
    .line 925
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fNamespaceContextWrapper:Lorg/apache/xerces/util/NamespaceContextWrapper;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0
.end method

.method public getNamespaceCount()I
    .locals 6

    .prologue
    .line 939
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 941
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getNamespaceContext()Lorg/apache/xerces/xni/NamespaceContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return v0

    .line 943
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not among the states "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    .line 944
    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    .line 945
    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xd

    .line 946
    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " valid for getNamespaceCount()."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 8

    .prologue
    .line 960
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    .line 962
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getNamespaceContext()Lorg/apache/xerces/xni/NamespaceContext;

    move-result-object v3

    move v4, v1

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 963
    .local v2, "prefix":Ljava/lang/String;
    move-object v3, v2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    move-object v3, v2

    goto :goto_0

    .line 965
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    invoke-static {v6}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not among the states "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    .line 966
    invoke-static {v6}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    .line 967
    invoke-static {v6}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xd

    .line 968
    invoke-static {v6}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " valid for getNamespacePrefix()."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 371
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getElementQName()Lorg/apache/xerces/xni/QName;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v0, v1

    .line 373
    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 981
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 983
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getNamespaceContext()Lorg/apache/xerces/xni/NamespaceContext;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getNamespaceContext()Lorg/apache/xerces/xni/NamespaceContext;

    move-result-object v3

    move v4, v1

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0

    .line 985
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    invoke-static {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not among the states "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    .line 986
    invoke-static {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    .line 987
    invoke-static {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xd

    .line 988
    invoke-static {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " valid for getNamespaceURI()."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1273
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "getNamespaceURI(String prefix) is called with a null prefix."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1276
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getNamespaceContext()Lorg/apache/xerces/xni/NamespaceContext;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0
.end method

.method protected getNotationDecls()Ljava/util/List;
    .locals 11

    .prologue
    .line 1326
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v6, v0

    iget v6, v6, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_4

    .line 1327
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    iget-object v6, v6, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 1342
    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    .local v1, "grammar":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    :goto_0
    return-object v0

    .line 1328
    .end local v1    # "grammar":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    iget-object v6, v6, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    check-cast v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;

    check-cast v6, Lcom/sun/xml/stream/XMLDTDScannerImpl;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLDTDScannerImpl;->getGrammar()Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-result-object v6

    move-object v1, v6

    .line 1329
    .restart local v1    # "grammar":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move-object v6, v1

    if-nez v6, :cond_1

    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 1330
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getNotationDecls()Ljava/util/List;

    move-result-object v6

    move-object v2, v6

    .line 1332
    .local v2, "notations":Ljava/util/List;
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    .line 1333
    .local v3, "it":Ljava/util/Iterator;
    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v6

    .line 1334
    .local v4, "list":Ljava/util/ArrayList;
    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1335
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;

    move-object v5, v6

    .line 1336
    .local v5, "ni":Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;
    move-object v6, v5

    if-eqz v6, :cond_2

    .line 1337
    move-object v6, v4

    new-instance v7, Lcom/sun/xml/stream/events/NotationDeclarationImpl;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v5

    invoke-direct {v8, v9}, Lcom/sun/xml/stream/events/NotationDeclarationImpl;-><init>(Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1339
    :cond_2
    goto :goto_1

    .line 1340
    .end local v5    # "ni":Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;
    :cond_3
    move-object v6, v4

    move-object v0, v6

    goto :goto_0

    .line 1342
    .end local v1    # "grammar":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    .end local v2    # "notations":Ljava/util/List;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/ArrayList;
    :cond_4
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public getPIData()Ljava/lang/String;
    .locals 6

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 382
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getPIData()Lorg/apache/xerces/util/XMLStringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0

    .line 383
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current state of the parser is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " But expected state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    .line 384
    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 6

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 393
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getPITarget()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0

    .line 394
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current state of the parser is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " But expected state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    .line 395
    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 4

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 407
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getElementQName()Lorg/apache/xerces/xni/QName;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v1, v2

    .line 408
    .local v1, "prefix":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_1

    const-string v2, ""

    :goto_0
    move-object v0, v2

    .line 410
    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :goto_1
    return-object v0

    .line 408
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    move-object v2, v1

    goto :goto_0

    .line 410
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1000
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1001
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    if-eqz v2, :cond_3

    .line 1002
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    const-string v3, "javax.xml.stream.notations"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1003
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLReaderImpl;->getNotationDecls()Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .line 1009
    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :goto_0
    return-object v0

    .line 1004
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    const-string v3, "javax.xml.stream.entities"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1005
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLReaderImpl;->getEntityDecls()Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1007
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1009
    :cond_3
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method protected getPropertyManager()Lcom/sun/xml/stream/PropertyManager;
    .locals 2

    .prologue
    .line 1291
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1022
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v6, 0xc

    if-eq v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1

    .line 1026
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getCharacterData()Lorg/apache/xerces/xni/XMLString;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 1051
    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    .local v1, "tmpBuffer":Lorg/apache/xerces/util/XMLStringBuffer;
    :goto_0
    return-object v0

    .line 1027
    .end local v1    # "tmpBuffer":Lorg/apache/xerces/util/XMLStringBuffer;
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_6

    .line 1028
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getEntityName()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 1029
    .local v1, "name":Ljava/lang/String;
    move-object v5, v1

    if-eqz v5, :cond_5

    .line 1030
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    iget-boolean v5, v5, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->foundBuiltInRefs:Z

    if-eqz v5, :cond_2

    .line 1031
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getCharacterData()Lorg/apache/xerces/xni/XMLString;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1033
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEntityManager;->getEntityStore()Lcom/sun/xml/stream/XMLEntityStorage;

    move-result-object v5

    move-object v2, v5

    .line 1034
    .local v2, "entityStore":Lcom/sun/xml/stream/XMLEntityStorage;
    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEntityStorage;->getDeclaredEntities()Ljava/util/Hashtable;

    move-result-object v5

    move-object v3, v5

    .line 1035
    .local v3, "ht":Ljava/util/Hashtable;
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/xml/stream/Entity;

    move-object v4, v5

    .line 1036
    .local v4, "en":Lcom/sun/xml/stream/Entity;
    move-object v5, v4

    if-nez v5, :cond_3

    .line 1037
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 1038
    :cond_3
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/xml/stream/Entity;->isExternal()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1039
    move-object v5, v4

    check-cast v5, Lcom/sun/xml/stream/Entity$ExternalEntity;

    iget-object v5, v5, Lcom/sun/xml/stream/Entity$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1041
    :cond_4
    move-object v5, v4

    check-cast v5, Lcom/sun/xml/stream/Entity$InternalEntity;

    iget-object v5, v5, Lcom/sun/xml/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    move-object v0, v5

    goto :goto_0

    .line 1043
    .end local v2    # "entityStore":Lcom/sun/xml/stream/XMLEntityStorage;
    .end local v3    # "ht":Ljava/util/Hashtable;
    .end local v4    # "en":Lcom/sun/xml/stream/Entity;
    :cond_5
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 1045
    .end local v1    # "name":Ljava/lang/String;
    :cond_6
    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v6, 0xb

    if-ne v5, v6, :cond_8

    .line 1046
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 1047
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    move-object v0, v5

    goto :goto_0

    .line 1049
    :cond_7
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getDTDDecl()Lorg/apache/xerces/util/XMLStringBuffer;

    move-result-object v5

    move-object v1, v5

    .line 1050
    .local v1, "tmpBuffer":Lorg/apache/xerces/util/XMLStringBuffer;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lorg/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    .line 1051
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    move-object v0, v5

    goto/16 :goto_0

    .line 1053
    .end local v1    # "tmpBuffer":Lorg/apache/xerces/util/XMLStringBuffer;
    :cond_8
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    invoke-static {v8}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not among the states"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    .line 1054
    invoke-static {v8}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    .line 1055
    invoke-static {v8}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xc

    .line 1056
    invoke-static {v8}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x6

    .line 1057
    invoke-static {v8}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x9

    .line 1058
    invoke-static {v8}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xb

    .line 1059
    invoke-static {v8}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " valid for getText() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getTextCharacters(I[CII)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1123
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move v1, p1

    .local v1, "sourceStart":I
    move-object v2, p2

    .local v2, "target":[C
    move/from16 v3, p3

    .local v3, "targetStart":I
    move/from16 v4, p4

    .local v4, "length":I
    move-object v7, v2

    if-nez v7, :cond_0

    .line 1124
    new-instance v7, Ljava/lang/NullPointerException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "target char array can\'t be null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1127
    :cond_0
    move v7, v3

    if-ltz v7, :cond_1

    move v7, v4

    if-ltz v7, :cond_1

    move v7, v1

    if-ltz v7, :cond_1

    move v7, v3

    move-object v8, v2

    array-length v8, v8

    if-ge v7, v8, :cond_1

    move v7, v3

    move v8, v4

    add-int/2addr v7, v8

    move-object v8, v2

    array-length v8, v8

    if-le v7, v8, :cond_2

    .line 1129
    :cond_1
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7

    .line 1134
    :cond_2
    const/4 v7, 0x0

    move v5, v7

    .line 1136
    .local v5, "copiedLength":I
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLReaderImpl;->getTextLength()I

    move-result v7

    move v8, v1

    sub-int/2addr v7, v8

    move v6, v7

    .line 1137
    .local v6, "available":I
    move v7, v6

    if-gez v7, :cond_3

    .line 1138
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "sourceStart is greater thannumber of characters associated with this event"

    invoke-direct {v8, v9}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1141
    :cond_3
    move v7, v6

    move v8, v4

    if-ge v7, v8, :cond_4

    .line 1142
    move v7, v6

    move v5, v7

    .line 1147
    :goto_0
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLReaderImpl;->getTextCharacters()[C

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLReaderImpl;->getTextStart()I

    move-result v8

    move v9, v1

    add-int/2addr v8, v9

    move-object v9, v2

    move v10, v3

    move v11, v5

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1148
    move v7, v5

    move v0, v7

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return v0

    .line 1144
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_4
    move v7, v4

    move v5, v7

    goto :goto_0
.end method

.method public getTextCharacters()[C
    .locals 6

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 421
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getCharacterData()Lorg/apache/xerces/xni/XMLString;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0

    .line 423
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not among the states "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    .line 424
    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    .line 425
    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xc

    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    .line 426
    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " valid for getTextCharacters() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTextLength()I
    .locals 6

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 436
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getCharacterData()Lorg/apache/xerces/xni/XMLString;

    move-result-object v1

    iget v1, v1, Lorg/apache/xerces/xni/XMLString;->length:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return v0

    .line 438
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not among the states "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    .line 439
    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    .line 440
    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xc

    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    .line 441
    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " valid for getTextLength() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTextStart()I
    .locals 6

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 450
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getCharacterData()Lorg/apache/xerces/xni/XMLString;

    move-result-object v1

    iget v1, v1, Lorg/apache/xerces/xni/XMLString;->offset:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return v0

    .line 452
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not among the states "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    .line 453
    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    .line 454
    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xc

    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    .line 455
    invoke-static {v4}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " valid for getTextStart() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 464
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getPIData()Lorg/apache/xerces/util/XMLStringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 472
    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :goto_0
    return-object v0

    .line 465
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 466
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getComment()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 467
    :cond_1
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 468
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getElementQName()Lorg/apache/xerces/xni/QName;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    .line 469
    :cond_3
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 470
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getCharacterData()Lorg/apache/xerces/xni/XMLString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 472
    :cond_4
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->getVersion()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return-object v0
.end method

.method public hasAttributes()Z
    .locals 2

    .prologue
    .line 484
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 3

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 490
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 492
    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 502
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 505
    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hasText()Z
    .locals 7

    .prologue
    .line 1157
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v6, 0xc

    if-ne v5, v6, :cond_2

    .line 1158
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getCharacterData()Lorg/apache/xerces/xni/XMLString;

    move-result-object v5

    iget v5, v5, Lorg/apache/xerces/xni/XMLString;->length:I

    if-lez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .line 1181
    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :goto_1
    return v0

    .line 1158
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1159
    :cond_2
    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_9

    .line 1160
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getEntityName()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 1161
    .local v1, "name":Ljava/lang/String;
    move-object v5, v1

    if-eqz v5, :cond_8

    .line 1162
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    iget-boolean v5, v5, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->foundBuiltInRefs:Z

    if-eqz v5, :cond_3

    .line 1163
    const/4 v5, 0x1

    move v0, v5

    goto :goto_1

    .line 1165
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEntityManager;->getEntityStore()Lcom/sun/xml/stream/XMLEntityStorage;

    move-result-object v5

    move-object v2, v5

    .line 1166
    .local v2, "entityStore":Lcom/sun/xml/stream/XMLEntityStorage;
    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEntityStorage;->getDeclaredEntities()Ljava/util/Hashtable;

    move-result-object v5

    move-object v3, v5

    .line 1167
    .local v3, "ht":Ljava/util/Hashtable;
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/xml/stream/Entity;

    move-object v4, v5

    .line 1168
    .local v4, "en":Lcom/sun/xml/stream/Entity;
    move-object v5, v4

    if-nez v5, :cond_4

    .line 1169
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1

    .line 1170
    :cond_4
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/xml/stream/Entity;->isExternal()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1171
    move-object v5, v4

    check-cast v5, Lcom/sun/xml/stream/Entity$ExternalEntity;

    iget-object v5, v5, Lcom/sun/xml/stream/Entity$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 1173
    :cond_6
    move-object v5, v4

    check-cast v5, Lcom/sun/xml/stream/Entity$InternalEntity;

    iget-object v5, v5, Lcom/sun/xml/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    :goto_3
    move v0, v5

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    .line 1176
    .end local v2    # "entityStore":Lcom/sun/xml/stream/XMLEntityStorage;
    .end local v3    # "ht":Ljava/util/Hashtable;
    .end local v4    # "en":Lcom/sun/xml/stream/Entity;
    :cond_8
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1

    .line 1178
    .end local v1    # "name":Ljava/lang/String;
    :cond_9
    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v6, 0xb

    if-ne v5, v6, :cond_a

    .line 1179
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    iget-boolean v5, v5, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fSeenDoctypeDecl:Z

    move v0, v5

    goto :goto_1

    .line 1181
    :cond_a
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method public hasValue()Z
    .locals 3

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 515
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 517
    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method init(Lcom/sun/xml/stream/PropertyManager;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, p1

    .local v1, "propertyManager":Lcom/sun/xml/stream/PropertyManager;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    .line 264
    move-object v2, v1

    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    move-object v2, v1

    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fErrorReporter:Lcom/sun/xml/stream/StaxErrorReporter;

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    move-object v2, v1

    const-string v3, "http://apache.org/xml/properties/internal/entity-manager"

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLReaderImpl;->reset()V

    .line 271
    return-void
.end method

.method public isAttributeSpecified(I)Z
    .locals 7

    .prologue
    .line 1192
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 1193
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lorg/apache/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->isSpecified(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return v0

    .line 1195
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current state is not among the states "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    .line 1196
    invoke-static {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    .line 1197
    invoke-static {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "valid for isAttributeSpecified()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isCharacters()Z
    .locals 3

    .prologue
    .line 1206
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEndElement()Z
    .locals 3

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStandalone()Z
    .locals 2

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->isStandAlone()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return v0
.end method

.method public isStartElement()Z
    .locals 3

    .prologue
    .line 540
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWhiteSpace()Z
    .locals 7

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->isCharacters()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v6, 0xc

    if-ne v5, v6, :cond_3

    .line 551
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getTextCharacters()[C

    move-result-object v5

    move-object v1, v5

    .line 552
    .local v1, "ch":[C
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getTextStart()I

    move-result v5

    move v2, v5

    .line 553
    .local v2, "start":I
    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLReaderImpl;->getTextLength()I

    move-result v6

    add-int/2addr v5, v6

    move v3, v5

    .line 554
    .local v3, "end":I
    move v5, v2

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_2

    .line 555
    move-object v5, v1

    move v6, v4

    aget-char v5, v5, v6

    invoke-static {v5}, Lorg/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 556
    const/4 v5, 0x0

    move v0, v5

    .line 561
    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :goto_1
    return v0

    .line 554
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 559
    :cond_2
    const/4 v5, 0x1

    move v0, v5

    goto :goto_1

    .line 561
    .end local v1    # "ch":[C
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "i":I
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method public next()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 571
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLReaderImpl;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 572
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 573
    new-instance v3, Ljava/util/NoSuchElementException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "END_DOCUMENT reached: no more elements on the stream."

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 575
    :cond_0
    new-instance v3, Ljavax/xml/stream/XMLStreamException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Error processing input source. The input stream is not complete."

    invoke-direct {v4, v5}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 579
    :cond_1
    move-object v3, v0

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->next()I

    move-result v4

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput v5, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v3

    .line 600
    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    .local v1, "ex":Ljava/io/IOException;
    .local v2, "isValidating":Ljava/lang/Boolean;
    :goto_0
    return v0

    .line 580
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "isValidating":Ljava/lang/Boolean;
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 583
    .restart local v1    # "ex":Ljava/io/IOException;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    iget v3, v3, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fScannerState:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_4

    .line 584
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    const-string v4, "javax.xml.stream.isValidating"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    move-object v2, v3

    .line 586
    .restart local v2    # "isValidating":Ljava/lang/Boolean;
    move-object v3, v2

    if-eqz v3, :cond_4

    move-object v3, v2

    .line 587
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    .line 589
    move-object v3, v0

    const/16 v4, 0xb

    iput v4, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    .line 590
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->setScannerState(I)V

    .line 591
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    iget-object v4, v4, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->fPrologDriver:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->setDriver(Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 592
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    .line 593
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 594
    :cond_2
    move-object v3, v0

    const-string v4, "<!-- Exception scanning External DTD Subset.  True contents of DTD cannot be determined.  Processing will continue as XMLInputFactory.IS_VALIDATING == false. -->"

    iput-object v4, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    .line 600
    :cond_3
    const/16 v3, 0xb

    move v0, v3

    goto :goto_0

    .line 605
    .end local v2    # "isValidating":Ljava/lang/Boolean;
    :cond_4
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLReaderImpl;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v3

    .line 606
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 607
    .local v1, "ex":Lorg/apache/xerces/xni/XNIException;
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    invoke-virtual {v5}, Lorg/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLReaderImpl;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Lorg/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public nextTag()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1221
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLReaderImpl;->next()I

    move-result v2

    move v1, v2

    .line 1222
    .local v1, "eventType":I
    :goto_0
    move v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLReaderImpl;->isWhiteSpace()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v2, v1

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    move-object v2, v0

    .line 1223
    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLReaderImpl;->isWhiteSpace()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v2, v1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    move v2, v1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    move v2, v1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 1229
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLReaderImpl;->next()I

    move-result v2

    move v1, v2

    goto :goto_0

    .line 1231
    :cond_3
    move v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    move v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 1232
    new-instance v2, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "expected start or end tag"

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v2

    .line 1234
    :cond_4
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1072
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move v1, p1

    .local v1, "type":I
    move-object v2, p2

    .local v2, "namespaceURI":Ljava/lang/String;
    move-object v3, p3

    .local v3, "localName":Ljava/lang/String;
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v4, v5, :cond_0

    .line 1073
    new-instance v4, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-static {v7}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " specified did "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "not match with current parser event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    .line 1074
    invoke-static {v7}, Lcom/sun/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1075
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1076
    new-instance v4, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Namespace URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " specified did not match "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "with current namespace URI"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1078
    :cond_1
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLReaderImpl;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1079
    new-instance v4, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LocalName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " specified did not match with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "current local name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1082
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fReuse:Z

    .line 292
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I

    .line 294
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLEntityManager;->reset(Lcom/sun/xml/stream/PropertyManager;)V

    .line 296
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->reset(Lcom/sun/xml/stream/PropertyManager;)V

    .line 299
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    .line 300
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    invoke-virtual {v2}, Lcom/sun/xml/stream/XMLEntityManager;->getEntityReader()Lcom/sun/xml/stream/XMLEntityReader;

    move-result-object v2

    check-cast v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;

    iput-object v2, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    .line 303
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    const-string v3, "javax.xml.stream.isNamespaceAware"

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fBindNamespaces:Z

    .line 304
    return-void
.end method

.method public setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, p1

    .local v1, "inputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fReuse:Z

    .line 209
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    .line 210
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v4}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->next()I

    move-result v4

    iput v4, v3, Lcom/sun/xml/stream/XMLReaderImpl;->fEventType:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 215
    .line 216
    return-void

    .line 211
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 212
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 213
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 214
    .local v2, "ex":Lorg/apache/xerces/xni/XNIException;
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    invoke-virtual {v5}, Lorg/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLReaderImpl;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Lorg/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, p1

    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLReaderImpl;->convertSAXInputSource2XMLInputSource(Lorg/xml/sax/InputSource;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLReaderImpl;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    .line 225
    return-void
.end method

.method protected setPropertyManager(Lcom/sun/xml/stream/PropertyManager;)V
    .locals 5

    .prologue
    .line 1281
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, p1

    .local v1, "propertyManager":Lcom/sun/xml/stream/PropertyManager;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    .line 1283
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    const-string v3, "stax-properties"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1284
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->setPropertyManager(Lcom/sun/xml/stream/PropertyManager;)V

    .line 1285
    return-void
.end method

.method public standaloneSet()Z
    .locals 2

    .prologue
    .line 1242
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLReaderImpl;->fScanner:Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/sun/xml/stream/XMLNSDocumentScannerImpl;->standaloneSet()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLReaderImpl;
    return v0
.end method
