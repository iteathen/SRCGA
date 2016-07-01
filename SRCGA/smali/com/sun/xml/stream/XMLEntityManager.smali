.class public Lcom/sun/xml/stream/XMLEntityManager;
.super Ljava/lang/Object;
.source "XMLEntityManager.java"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLComponent;
.implements Lorg/apache/xerces/xni/parser/XMLEntityResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final BUFFER_SIZE:Ljava/lang/String; = "http://apache.org/xml/properties/input-buffer-size"

.field private static final DEBUG_BUFFER:Z = false

.field private static final DEBUG_ENCODINGS:Z = false

.field private static final DEBUG_ENTITIES:Z = false

.field private static final DEBUG_RESOLVER:Z = false

.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final DEFAULT_INTERNAL_BUFFER_SIZE:I = 0x400

.field public static final DEFAULT_XMLDECL_BUFFER_SIZE:I = 0x40

.field private static final DTDEntity:Ljava/lang/String;

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final EXTERNAL_GENERAL_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field protected static final EXTERNAL_PARAMETER_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final STAX_ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/stax-entity-resolver"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ENTITYDEF:Ljava/lang/String; = "http://apache.org/xml/features/warn-on-duplicate-entitydef"

.field private static final XMLEntity:Ljava/lang/String;

.field private static gAfterEscaping1:[C

.field private static gAfterEscaping2:[C

.field private static gEscapedUserDir:Ljava/lang/String;

.field private static gHexChs:[C

.field private static gNeedEscaping:[Z

.field private static gUserDir:Ljava/lang/String;


# instance fields
.field protected final defaultEncoding:[Ljava/lang/Object;

.field protected fAllowJavaEncodings:Z

.field protected fBufferSize:I

.field protected fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

.field protected fDeclaredEntities:Ljava/util/Hashtable;

.field protected fEntities:Ljava/util/Hashtable;

.field protected fEntityHandler:Lcom/sun/xml/stream/XMLEntityHandler;

.field protected fEntityReader:Lcom/sun/xml/stream/XMLEntityReaderImpl;

.field protected fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

.field protected fEntityStack:Ljava/util/Stack;

.field protected fEntityStorage:Lcom/sun/xml/stream/XMLEntityStorage;

.field protected fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

.field protected fExternalGeneralEntities:Z

.field protected fExternalParameterEntities:Z

.field protected fInExternalSubset:Z

.field protected fOwnReaders:Ljava/util/Vector;

.field protected fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

.field private final fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

.field protected fStandalone:Z

.field protected fStaxEntityResolver:Lcom/sun/xml/stream/StaxEntityResolverWrapper;

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field protected fValidation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 171
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    const-string v7, "http://xml.org/sax/features/validation"

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x1

    const-string v7, "http://xml.org/sax/features/external-general-entities"

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x2

    const-string v7, "http://xml.org/sax/features/external-parameter-entities"

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x3

    const-string v7, "http://apache.org/xml/features/allow-java-encodings"

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x4

    const-string v7, "http://apache.org/xml/features/warn-on-duplicate-entitydef"

    aput-object v7, v5, v6

    sput-object v4, Lcom/sun/xml/stream/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 180
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Boolean;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x4

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v7, v5, v6

    sput-object v4, Lcom/sun/xml/stream/XMLEntityManager;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 189
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    const-string v7, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x1

    const-string v7, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x2

    const-string v7, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x3

    const-string v7, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x4

    const-string v7, "http://apache.org/xml/properties/input-buffer-size"

    aput-object v7, v5, v6

    sput-object v4, Lcom/sun/xml/stream/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 198
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x3

    const/4 v7, 0x0

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x4

    new-instance v7, Ljava/lang/Integer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const/16 v9, 0x2000

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    sput-object v4, Lcom/sun/xml/stream/XMLEntityManager;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    .line 206
    const-string v4, "[xml]"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sun/xml/stream/XMLEntityManager;->XMLEntity:Ljava/lang/String;

    .line 207
    const-string v4, "[dtd]"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sun/xml/stream/XMLEntityManager;->DTDEntity:Ljava/lang/String;

    .line 1157
    const/16 v4, 0x80

    new-array v4, v4, [Z

    sput-object v4, Lcom/sun/xml/stream/XMLEntityManager;->gNeedEscaping:[Z

    .line 1159
    const/16 v4, 0x80

    new-array v4, v4, [C

    sput-object v4, Lcom/sun/xml/stream/XMLEntityManager;->gAfterEscaping1:[C

    .line 1161
    const/16 v4, 0x80

    new-array v4, v4, [C

    sput-object v4, Lcom/sun/xml/stream/XMLEntityManager;->gAfterEscaping2:[C

    .line 1162
    const/16 v4, 0x10

    new-array v4, v4, [C

    fill-array-data v4, :array_0

    sput-object v4, Lcom/sun/xml/stream/XMLEntityManager;->gHexChs:[C

    .line 1166
    const/4 v4, 0x0

    move v0, v4

    .local v0, "i":I
    :goto_0
    move v4, v0

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_0

    .line 1167
    sget-object v4, Lcom/sun/xml/stream/XMLEntityManager;->gNeedEscaping:[Z

    move v5, v0

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 1168
    sget-object v4, Lcom/sun/xml/stream/XMLEntityManager;->gAfterEscaping1:[C

    move v5, v0

    sget-object v6, Lcom/sun/xml/stream/XMLEntityManager;->gHexChs:[C

    move v7, v0

    const/4 v8, 0x4

    shr-int/lit8 v7, v7, 0x4

    aget-char v6, v6, v7

    aput-char v6, v4, v5

    .line 1169
    sget-object v4, Lcom/sun/xml/stream/XMLEntityManager;->gAfterEscaping2:[C

    move v5, v0

    sget-object v6, Lcom/sun/xml/stream/XMLEntityManager;->gHexChs:[C

    move v7, v0

    const/16 v8, 0xf

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v4, v5

    .line 1166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1171
    :cond_0
    sget-object v4, Lcom/sun/xml/stream/XMLEntityManager;->gNeedEscaping:[Z

    const/16 v5, 0x7f

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 1172
    sget-object v4, Lcom/sun/xml/stream/XMLEntityManager;->gAfterEscaping1:[C

    const/16 v5, 0x7f

    const/16 v6, 0x37

    aput-char v6, v4, v5

    .line 1173
    sget-object v4, Lcom/sun/xml/stream/XMLEntityManager;->gAfterEscaping2:[C

    const/16 v5, 0x7f

    const/16 v6, 0x46

    aput-char v6, v4, v5

    .line 1174
    const/16 v4, 0xf

    new-array v4, v4, [C

    fill-array-data v4, :array_1

    move-object v0, v4

    .line 1176
    .local v0, "escChs":[C
    move-object v4, v0

    array-length v4, v4

    move v1, v4

    .line 1178
    .local v1, "len":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 1179
    move-object v4, v0

    move v5, v3

    aget-char v4, v4, v5

    move v2, v4

    .line 1180
    .local v2, "ch":C
    sget-object v4, Lcom/sun/xml/stream/XMLEntityManager;->gNeedEscaping:[Z

    move v5, v2

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 1181
    sget-object v4, Lcom/sun/xml/stream/XMLEntityManager;->gAfterEscaping1:[C

    move v5, v2

    sget-object v6, Lcom/sun/xml/stream/XMLEntityManager;->gHexChs:[C

    move v7, v2

    const/4 v8, 0x4

    shr-int/lit8 v7, v7, 0x4

    aget-char v6, v6, v7

    aput-char v6, v4, v5

    .line 1182
    sget-object v4, Lcom/sun/xml/stream/XMLEntityManager;->gAfterEscaping2:[C

    move v5, v2

    sget-object v6, Lcom/sun/xml/stream/XMLEntityManager;->gHexChs:[C

    move v7, v2

    const/16 v8, 0xf

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v4, v5

    .line 1178
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1184
    .end local v2    # "ch":C
    :cond_1
    return-void

    .line 1162
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    .line 1174
    :array_1
    .array-data 2
        0x20s
        0x3cs
        0x3es
        0x23s
        0x25s
        0x22s
        0x7bs
        0x7ds
        0x7cs
        0x5cs
        0x5es
        0x7es
        0x5bs
        0x5ds
        0x60s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 255
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLEntityManager;->fAllowJavaEncodings:Z

    .line 287
    move-object v1, v0

    const/16 v2, 0x2000

    iput v2, v1, Lcom/sun/xml/stream/XMLEntityManager;->fBufferSize:I

    .line 297
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLEntityManager;->fInExternalSubset:Z

    .line 309
    move-object v1, v0

    new-instance v2, Ljava/util/Hashtable;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    .line 312
    move-object v1, v0

    new-instance v2, Ljava/util/Stack;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    .line 315
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    .line 326
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "UTF-8"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    iput-object v2, v1, Lcom/sun/xml/stream/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    .line 332
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLEntityManager;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    .line 838
    move-object v1, v0

    new-instance v2, Ljava/util/Vector;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLEntityManager;->fOwnReaders:Ljava/util/Vector;

    .line 344
    move-object v1, v0

    new-instance v2, Lcom/sun/xml/stream/XMLEntityStorage;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLEntityStorage;-><init>(Lcom/sun/xml/stream/XMLEntityManager;)V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/stream/XMLEntityStorage;

    .line 345
    move-object v1, v0

    new-instance v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;-><init>(Lcom/sun/xml/stream/XMLEntityManager;)V

    iput-object v2, v1, Lcom/sun/xml/stream/XMLEntityManager;->fEntityReader:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    .line 346
    return-void
.end method

.method public constructor <init>(Lcom/sun/xml/stream/PropertyManager;)V
    .locals 8

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v1, p1

    .local v1, "propertyManager":Lcom/sun/xml/stream/PropertyManager;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 255
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLEntityManager;->fAllowJavaEncodings:Z

    .line 287
    move-object v2, v0

    const/16 v3, 0x2000

    iput v3, v2, Lcom/sun/xml/stream/XMLEntityManager;->fBufferSize:I

    .line 297
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLEntityManager;->fInExternalSubset:Z

    .line 309
    move-object v2, v0

    new-instance v3, Ljava/util/Hashtable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    .line 312
    move-object v2, v0

    new-instance v3, Ljava/util/Stack;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    .line 315
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    .line 326
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "UTF-8"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    .line 332
    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityManager;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    .line 838
    move-object v2, v0

    new-instance v3, Ljava/util/Vector;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityManager;->fOwnReaders:Ljava/util/Vector;

    .line 350
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityManager;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    .line 353
    move-object v2, v0

    new-instance v3, Lcom/sun/xml/stream/XMLEntityStorage;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLEntityStorage;-><init>(Lcom/sun/xml/stream/XMLEntityManager;)V

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/stream/XMLEntityStorage;

    .line 354
    move-object v2, v0

    new-instance v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;-><init>(Lcom/sun/xml/stream/PropertyManager;Lcom/sun/xml/stream/XMLEntityManager;)V

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityManager;->fEntityReader:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    .line 355
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityManager;->reset(Lcom/sun/xml/stream/PropertyManager;)V

    .line 356
    return-void
.end method

.method public static expandSystemId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1149
    move-object v0, p0

    .local v0, "systemId":Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sun/xml/stream/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "systemId":Ljava/lang/String;
    return-object v0
.end method

.method public static expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    .prologue
    .line 1307
    move-object v0, p0

    .local v0, "systemId":Ljava/lang/String;
    move-object/from16 v1, p1

    .local v1, "baseSystemId":Ljava/lang/String;
    move-object v7, v0

    if-eqz v7, :cond_0

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 1308
    :cond_0
    move-object v7, v0

    move-object v0, v7

    .line 1360
    .end local v0    # "systemId":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1312
    .restart local v0    # "systemId":Ljava/lang/String;
    :cond_1
    :try_start_0
    new-instance v7, Lorg/apache/xerces/util/URI;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    invoke-direct {v8, v9}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v7

    .line 1313
    .local v2, "uri":Lorg/apache/xerces/util/URI;
    move-object v7, v2

    if-eqz v7, :cond_2

    .line 1314
    move-object v7, v0

    move-object v0, v7

    goto :goto_0

    .line 1319
    .line 1321
    .end local v2    # "uri":Lorg/apache/xerces/util/URI;
    :cond_2
    :goto_1
    move-object v7, v0

    invoke-static {v7}, Lcom/sun/xml/stream/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 1324
    .local v2, "id":Ljava/lang/String;
    const/4 v7, 0x0

    move-object v3, v7

    .line 1325
    .local v3, "base":Lorg/apache/xerces/util/URI;
    const/4 v7, 0x0

    move-object v4, v7

    .line 1327
    .local v4, "uri":Lorg/apache/xerces/util/URI;
    move-object v7, v1

    if-eqz v7, :cond_3

    move-object v7, v1

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v1

    move-object v8, v0

    .line 1328
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1329
    :cond_3
    invoke-static {}, Lcom/sun/xml/stream/XMLEntityManager;->getUserDir()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 1330
    .local v5, "dir":Ljava/lang/String;
    new-instance v7, Lorg/apache/xerces/util/URI;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string v9, "file"

    const-string v10, ""

    move-object v11, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v7

    .line 1350
    .end local v5    # "dir":Ljava/lang/String;
    :goto_2
    new-instance v7, Lorg/apache/xerces/util/URI;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v3

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Lorg/apache/xerces/util/URI;-><init>(Lorg/apache/xerces/util/URI;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v7

    .line 1355
    .line 1357
    :goto_3
    move-object v7, v4

    if-nez v7, :cond_6

    .line 1358
    move-object v7, v0

    move-object v0, v7

    goto :goto_0

    .line 1317
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "base":Lorg/apache/xerces/util/URI;
    .end local v4    # "uri":Lorg/apache/xerces/util/URI;
    :catch_0
    move-exception v7

    move-object v2, v7

    goto :goto_1

    .line 1334
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v3    # "base":Lorg/apache/xerces/util/URI;
    .restart local v4    # "uri":Lorg/apache/xerces/util/URI;
    :cond_4
    :try_start_2
    new-instance v7, Lorg/apache/xerces/util/URI;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    invoke-static {v9}, Lcom/sun/xml/stream/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v7

    .line 1347
    goto :goto_2

    .line 1336
    :catch_1
    move-exception v7

    move-object v5, v7

    .line 1337
    .local v5, "e":Lorg/apache/xerces/util/URI$MalformedURIException;
    move-object v7, v1

    const/16 v8, 0x3a

    :try_start_3
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 1340
    new-instance v7, Lorg/apache/xerces/util/URI;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string v9, "file"

    const-string v10, ""

    move-object v11, v1

    invoke-static {v11}, Lcom/sun/xml/stream/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v7

    goto :goto_2

    .line 1343
    :cond_5
    invoke-static {}, Lcom/sun/xml/stream/XMLEntityManager;->getUserDir()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 1344
    .local v6, "dir":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/xml/stream/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 1345
    new-instance v7, Lorg/apache/xerces/util/URI;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string v9, "file"

    const-string v10, ""

    move-object v11, v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v3, v7

    goto :goto_2

    .line 1352
    .end local v5    # "e":Lorg/apache/xerces/util/URI$MalformedURIException;
    .end local v6    # "dir":Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object v5, v7

    goto :goto_3

    .line 1360
    :cond_6
    move-object v7, v4

    invoke-virtual {v7}, Lorg/apache/xerces/util/URI;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0
.end method

.method protected static fixURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 1749
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v3, v0

    sget-char v4, Ljava/io/File;->separatorChar:C

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 1752
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 1753
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v1, v3

    .line 1755
    .local v1, "ch1":C
    move v3, v1

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_1

    .line 1756
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    move v2, v3

    .line 1757
    .local v2, "ch0":C
    move v3, v2

    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    move v3, v2

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_0

    .line 1758
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 1760
    .line 1768
    .end local v1    # "ch1":C
    .end local v2    # "ch0":C
    :cond_0
    :goto_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "str":Ljava/lang/String;
    return-object v0

    .line 1762
    .restart local v0    # "str":Ljava/lang/String;
    .restart local v1    # "ch1":C
    :cond_1
    move v3, v1

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    .line 1763
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private static declared-synchronized getUserDir()Ljava/lang/String;
    .locals 15

    .prologue
    .line 1197
    const-class v13, Lcom/sun/xml/stream/XMLEntityManager;

    monitor-enter v13

    :try_start_0
    const-string v9, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v9

    .line 1199
    .local v0, "userDir":Ljava/lang/String;
    :try_start_1
    const-string v9, "user.dir"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    move-object v0, v9

    .line 1202
    .line 1205
    :goto_0
    move-object v9, v0

    :try_start_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    .line 1206
    const-string v9, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v9

    .line 1288
    .end local v0    # "userDir":Ljava/lang/String;
    .local v1, "separator":C
    .local v2, "len":I
    .local v4, "buffer":Ljava/lang/StringBuffer;
    .local v5, "i":I
    :goto_1
    monitor-exit v13

    return-object v0

    .line 1201
    .end local v1    # "separator":C
    .end local v2    # "len":I
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .end local v5    # "i":I
    .restart local v0    # "userDir":Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v1, v9

    goto :goto_0

    .line 1210
    :cond_0
    move-object v9, v0

    :try_start_3
    sget-object v10, Lcom/sun/xml/stream/XMLEntityManager;->gUserDir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1211
    sget-object v9, Lcom/sun/xml/stream/XMLEntityManager;->gEscapedUserDir:Ljava/lang/String;

    move-object v0, v9

    goto :goto_1

    .line 1215
    :cond_1
    move-object v9, v0

    sput-object v9, Lcom/sun/xml/stream/XMLEntityManager;->gUserDir:Ljava/lang/String;

    .line 1217
    sget-char v9, Ljava/io/File;->separatorChar:C

    move v1, v9

    .line 1218
    .restart local v1    # "separator":C
    move-object v9, v0

    move v10, v1

    const/16 v11, 0x2f

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    .line 1220
    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v2, v9

    .line 1221
    .restart local v2    # "len":I
    new-instance v9, Ljava/lang/StringBuffer;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move v11, v2

    const/4 v12, 0x3

    mul-int/lit8 v11, v11, 0x3

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v4, v9

    .line 1223
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    move v9, v2

    const/4 v10, 0x2

    if-lt v9, v10, :cond_2

    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3a

    if-ne v9, v10, :cond_2

    .line 1224
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    move v3, v9

    .line 1225
    .local v3, "ch":I
    move v9, v3

    const/16 v10, 0x41

    if-lt v9, v10, :cond_2

    move v9, v3

    const/16 v10, 0x5a

    if-gt v9, v10, :cond_2

    .line 1226
    move-object v9, v4

    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1231
    .end local v3    # "ch":I
    :cond_2
    const/4 v9, 0x0

    move v5, v9

    .line 1232
    .restart local v5    # "i":I
    :goto_2
    move v9, v5

    move v10, v2

    if-ge v9, v10, :cond_3

    .line 1233
    move-object v9, v0

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    move v3, v9

    .line 1235
    .restart local v3    # "ch":I
    move v9, v3

    const/16 v10, 0x80

    if-lt v9, v10, :cond_4

    .line 1236
    .line 1249
    .end local v3    # "ch":I
    :cond_3
    move v9, v5

    move v10, v2

    if-ge v9, v10, :cond_8

    .line 1251
    const/4 v9, 0x0

    move-object v6, v9

    .line 1254
    .local v6, "bytes":[B
    move-object v9, v0

    move v10, v5

    :try_start_4
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v9

    move-object v6, v9

    .line 1258
    .line 1259
    move-object v9, v6

    :try_start_5
    array-length v9, v9

    move v2, v9

    .line 1262
    const/4 v9, 0x0

    move v5, v9

    :goto_3
    move v9, v5

    move v10, v2

    if-ge v9, v10, :cond_8

    .line 1263
    move-object v9, v6

    move v10, v5

    aget-byte v9, v9, v10

    move v7, v9

    .line 1265
    .local v7, "b":B
    move v9, v7

    if-gez v9, :cond_6

    .line 1266
    move v9, v7

    const/16 v10, 0x100

    add-int/lit16 v9, v9, 0x100

    move v3, v9

    .line 1267
    .restart local v3    # "ch":I
    move-object v9, v4

    const/16 v10, 0x25

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1268
    move-object v9, v4

    sget-object v10, Lcom/sun/xml/stream/XMLEntityManager;->gHexChs:[C

    move v11, v3

    const/4 v12, 0x4

    shr-int/lit8 v11, v11, 0x4

    aget-char v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1269
    move-object v9, v4

    sget-object v10, Lcom/sun/xml/stream/XMLEntityManager;->gHexChs:[C

    move v11, v3

    const/16 v12, 0xf

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1262
    .end local v3    # "ch":I
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1237
    .end local v6    # "bytes":[B
    .end local v7    # "b":B
    .restart local v3    # "ch":I
    :cond_4
    sget-object v9, Lcom/sun/xml/stream/XMLEntityManager;->gNeedEscaping:[Z

    move v10, v3

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_5

    .line 1238
    move-object v9, v4

    const/16 v10, 0x25

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1239
    move-object v9, v4

    sget-object v10, Lcom/sun/xml/stream/XMLEntityManager;->gAfterEscaping1:[C

    move v11, v3

    aget-char v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1240
    move-object v9, v4

    sget-object v10, Lcom/sun/xml/stream/XMLEntityManager;->gAfterEscaping2:[C

    move v11, v3

    aget-char v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1232
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 1244
    :cond_5
    move-object v9, v4

    move v10, v3

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_5

    .line 1255
    .end local v3    # "ch":I
    .restart local v6    # "bytes":[B
    :catch_1
    move-exception v9

    move-object v8, v9

    .line 1257
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    move-object v9, v0

    move-object v0, v9

    goto/16 :goto_1

    .line 1271
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v7    # "b":B
    :cond_6
    sget-object v9, Lcom/sun/xml/stream/XMLEntityManager;->gNeedEscaping:[Z

    move v10, v7

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_7

    .line 1272
    move-object v9, v4

    const/16 v10, 0x25

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1273
    move-object v9, v4

    sget-object v10, Lcom/sun/xml/stream/XMLEntityManager;->gAfterEscaping1:[C

    move v11, v7

    aget-char v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1274
    move-object v9, v4

    sget-object v10, Lcom/sun/xml/stream/XMLEntityManager;->gAfterEscaping2:[C

    move v11, v7

    aget-char v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_4

    .line 1277
    :cond_7
    move-object v9, v4

    move v10, v7

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_4

    .line 1283
    .end local v6    # "bytes":[B
    .end local v7    # "b":B
    :cond_8
    move-object v9, v0

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1284
    move-object v9, v4

    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 1286
    :cond_9
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/sun/xml/stream/XMLEntityManager;->gEscapedUserDir:Ljava/lang/String;

    .line 1288
    sget-object v9, Lcom/sun/xml/stream/XMLEntityManager;->gEscapedUserDir:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v9

    goto/16 :goto_1

    .line 1197
    .end local v1    # "separator":C
    .end local v2    # "len":I
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .end local v5    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit v13

    .end local v0    # "userDir":Ljava/lang/String;
    throw v0
.end method


# virtual methods
.method public closeReaders()V
    .locals 5

    .prologue
    .line 845
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityManager;->fOwnReaders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    if-ltz v3, :cond_0

    .line 847
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityManager;->fOwnReaders:Ljava/util/Vector;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Reader;

    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    .line 845
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 848
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_1

    .line 853
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityManager;->fOwnReaders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    .line 854
    return-void
.end method

.method protected createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1476
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object/from16 v1, p1

    .local v1, "inputStream":Ljava/io/InputStream;
    move-object/from16 v2, p2

    .local v2, "encoding":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "isBigEndian":Ljava/lang/Boolean;
    move-object v8, v2

    if-nez v8, :cond_0

    .line 1477
    const-string v8, "UTF-8"

    move-object v2, v8

    .line 1481
    :cond_0
    move-object v8, v2

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 1482
    .local v4, "ENCODING":Ljava/lang/String;
    move-object v8, v4

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1486
    new-instance v8, Lorg/apache/xerces/impl/io/UTF8Reader;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v1

    move-object v11, v0

    iget v11, v11, Lcom/sun/xml/stream/XMLEntityManager;->fBufferSize:I

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v13, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v12, v13}, Lcom/sun/xml/stream/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    invoke-virtual {v13}, Lcom/sun/xml/stream/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v13

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    move-object v0, v8

    .line 1565
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    :goto_0
    return-object v0

    .line 1488
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    :cond_1
    move-object v8, v4

    const-string v9, "US-ASCII"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1492
    new-instance v8, Lorg/apache/xerces/impl/io/ASCIIReader;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v1

    move-object v11, v0

    iget v11, v11, Lcom/sun/xml/stream/XMLEntityManager;->fBufferSize:I

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v13, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v12, v13}, Lcom/sun/xml/stream/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    invoke-virtual {v13}, Lcom/sun/xml/stream/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v13

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;ILorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    move-object v0, v8

    goto :goto_0

    .line 1494
    :cond_2
    move-object v8, v4

    const-string v9, "ISO-10646-UCS-4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1495
    move-object v8, v3

    if-eqz v8, :cond_4

    .line 1496
    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move v5, v8

    .line 1497
    .local v5, "isBE":Z
    move v8, v5

    if-eqz v8, :cond_3

    .line 1498
    new-instance v8, Lorg/apache/xerces/impl/io/UCSReader;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v1

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    move-object v0, v8

    goto :goto_0

    .line 1500
    :cond_3
    new-instance v8, Lorg/apache/xerces/impl/io/UCSReader;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v1

    const/4 v11, 0x4

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    move-object v0, v8

    goto :goto_0

    .line 1503
    .end local v5    # "isBE":Z
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/xml/stream/XMLEntityManager;->getEntityReader()Lcom/sun/xml/stream/XMLEntityReader;

    move-result-object v9

    const-string v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v11, "EncodingByteOrderUnsupported"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    move-object v15, v2

    aput-object v15, v13, v14

    const/4 v13, 0x2

    invoke-virtual/range {v8 .. v13}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1509
    :cond_5
    move-object v8, v4

    const-string v9, "ISO-10646-UCS-2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1510
    move-object v8, v3

    if-eqz v8, :cond_7

    .line 1511
    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move v5, v8

    .line 1512
    .restart local v5    # "isBE":Z
    move v8, v5

    if-eqz v8, :cond_6

    .line 1513
    new-instance v8, Lorg/apache/xerces/impl/io/UCSReader;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v1

    const/4 v11, 0x2

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    move-object v0, v8

    goto/16 :goto_0

    .line 1515
    :cond_6
    new-instance v8, Lorg/apache/xerces/impl/io/UCSReader;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v1

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    move-object v0, v8

    goto/16 :goto_0

    .line 1518
    .end local v5    # "isBE":Z
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/xml/stream/XMLEntityManager;->getEntityReader()Lcom/sun/xml/stream/XMLEntityReader;

    move-result-object v9

    const-string v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v11, "EncodingByteOrderUnsupported"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    move-object v15, v2

    aput-object v15, v13, v14

    const/4 v13, 0x2

    invoke-virtual/range {v8 .. v13}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1526
    :cond_8
    move-object v8, v2

    invoke-static {v8}, Lorg/apache/xerces/util/XMLChar;->isValidIANAEncoding(Ljava/lang/String;)Z

    move-result v8

    move v5, v8

    .line 1527
    .local v5, "validIANA":Z
    move-object v8, v2

    invoke-static {v8}, Lorg/apache/xerces/util/XMLChar;->isValidJavaEncoding(Ljava/lang/String;)Z

    move-result v8

    move v6, v8

    .line 1528
    .local v6, "validJava":Z
    move v8, v5

    if-eqz v8, :cond_9

    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/xml/stream/XMLEntityManager;->fAllowJavaEncodings:Z

    if-eqz v8, :cond_a

    move v8, v6

    if-nez v8, :cond_a

    .line 1529
    :cond_9
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/xml/stream/XMLEntityManager;->getEntityReader()Lcom/sun/xml/stream/XMLEntityReader;

    move-result-object v9

    const-string v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v11, "EncodingDeclInvalid"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    move-object v15, v2

    aput-object v15, v13, v14

    const/4 v13, 0x2

    invoke-virtual/range {v8 .. v13}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1541
    const-string v8, "ISO-8859-1"

    move-object v2, v8

    .line 1545
    :cond_a
    move-object v8, v4

    invoke-static {v8}, Lorg/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 1546
    .local v7, "javaEncoding":Ljava/lang/String;
    move-object v8, v7

    if-nez v8, :cond_b

    .line 1547
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/xml/stream/XMLEntityManager;->fAllowJavaEncodings:Z

    if-eqz v8, :cond_c

    .line 1548
    move-object v8, v2

    move-object v7, v8

    .line 1565
    :cond_b
    :goto_1
    new-instance v8, Ljava/io/BufferedReader;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    new-instance v10, Ljava/io/InputStreamReader;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v1

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v8

    goto/16 :goto_0

    .line 1550
    :cond_c
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/xml/stream/XMLEntityManager;->getEntityReader()Lcom/sun/xml/stream/XMLEntityReader;

    move-result-object v9

    const-string v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v11, "EncodingDeclInvalid"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    move-object v15, v2

    aput-object v15, v13, v14

    const/4 v13, 0x2

    invoke-virtual/range {v8 .. v13}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1555
    const-string v8, "ISO8859_1"

    move-object v7, v8

    goto :goto_1
.end method

.method public endEntity()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 866
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/sun/xml/stream/XMLEntityHandler;

    if-eqz v2, :cond_0

    .line 867
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/sun/xml/stream/XMLEntityHandler;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/sun/xml/stream/XMLEntityHandler;->endEntity(Ljava/lang/String;)V

    .line 871
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-eqz v2, :cond_1

    .line 874
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    invoke-virtual {v2}, Lcom/sun/xml/stream/Entity$ScannedEntity;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    .line 888
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-lez v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/xml/stream/Entity$ScannedEntity;

    :goto_0
    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    .line 890
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityManager;->fEntityReader:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->setCurrentEntity(Lcom/sun/xml/stream/Entity$ScannedEntity;)V

    .line 907
    return-void

    .line 875
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 876
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Lorg/apache/xerces/xni/XNIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 888
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public endExternalSubset()V
    .locals 3

    .prologue
    .line 706
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLEntityManager;->fInExternalSubset:Z

    .line 707
    return-void
.end method

.method public getColumnNumber()I
    .locals 6

    .prologue
    .line 1715
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-eqz v4, :cond_2

    .line 1716
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    invoke-virtual {v4}, Lcom/sun/xml/stream/Entity$ScannedEntity;->isExternal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1717
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    move v0, v4

    .line 1731
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    .local v1, "size":I
    .local v2, "i":I
    .local v3, "firstExternalEntity":Lcom/sun/xml/stream/Entity$ScannedEntity;
    :goto_0
    return v0

    .line 1721
    .end local v1    # "size":I
    .end local v2    # "i":I
    .end local v3    # "firstExternalEntity":Lcom/sun/xml/stream/Entity$ScannedEntity;
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    move v1, v4

    .line 1722
    .restart local v1    # "size":I
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .restart local v2    # "i":I
    :goto_1
    move v4, v2

    if-lez v4, :cond_2

    .line 1723
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v3, v4

    .line 1724
    .restart local v3    # "firstExternalEntity":Lcom/sun/xml/stream/Entity$ScannedEntity;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/xml/stream/Entity$ScannedEntity;->isExternal()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1725
    move-object v4, v3

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    move v0, v4

    goto :goto_0

    .line 1722
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1731
    .end local v1    # "size":I
    .end local v2    # "i":I
    .end local v3    # "firstExternalEntity":Lcom/sun/xml/stream/Entity$ScannedEntity;
    :cond_2
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0
.end method

.method public getCurrentEntity()Lcom/sun/xml/stream/Entity$ScannedEntity;
    .locals 2

    .prologue
    .line 834
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    return-object v0
.end method

.method protected getEncodingName([BI)[Ljava/lang/Object;
    .locals 14

    .prologue
    .line 1381
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v1, p1

    .local v1, "b4":[B
    move/from16 v2, p2

    .local v2, "count":I
    move v7, v2

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    .line 1382
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    move-object v0, v7

    .line 1452
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    :goto_0
    return-object v0

    .line 1386
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    :cond_0
    move-object v7, v1

    const/4 v8, 0x0

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    move v3, v7

    .line 1387
    .local v3, "b0":I
    move-object v7, v1

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    move v4, v7

    .line 1388
    .local v4, "b1":I
    move v7, v3

    const/16 v8, 0xfe

    if-ne v7, v8, :cond_1

    move v7, v4

    const/16 v8, 0xff

    if-ne v7, v8, :cond_1

    .line 1390
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "UTF-16BE"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Boolean;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v10, v8, v9

    move-object v0, v7

    goto :goto_0

    .line 1392
    :cond_1
    move v7, v3

    const/16 v8, 0xff

    if-ne v7, v8, :cond_2

    move v7, v4

    const/16 v8, 0xfe

    if-ne v7, v8, :cond_2

    .line 1394
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "UTF-16LE"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Boolean;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v10, v8, v9

    move-object v0, v7

    goto :goto_0

    .line 1399
    :cond_2
    move v7, v2

    const/4 v8, 0x3

    if-ge v7, v8, :cond_3

    .line 1400
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    move-object v0, v7

    goto :goto_0

    .line 1404
    :cond_3
    move-object v7, v1

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    move v5, v7

    .line 1405
    .local v5, "b2":I
    move v7, v3

    const/16 v8, 0xef

    if-ne v7, v8, :cond_4

    move v7, v4

    const/16 v8, 0xbb

    if-ne v7, v8, :cond_4

    move v7, v5

    const/16 v8, 0xbf

    if-ne v7, v8, :cond_4

    .line 1406
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    move-object v0, v7

    goto/16 :goto_0

    .line 1411
    :cond_4
    move v7, v2

    const/4 v8, 0x4

    if-ge v7, v8, :cond_5

    .line 1412
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    move-object v0, v7

    goto/16 :goto_0

    .line 1416
    :cond_5
    move-object v7, v1

    const/4 v8, 0x3

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    move v6, v7

    .line 1417
    .local v6, "b3":I
    move v7, v3

    if-nez v7, :cond_6

    move v7, v4

    if-nez v7, :cond_6

    move v7, v5

    if-nez v7, :cond_6

    move v7, v6

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_6

    .line 1419
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "ISO-10646-UCS-4"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Boolean;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v10, v8, v9

    move-object v0, v7

    goto/16 :goto_0

    .line 1421
    :cond_6
    move v7, v3

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_7

    move v7, v4

    if-nez v7, :cond_7

    move v7, v5

    if-nez v7, :cond_7

    move v7, v6

    if-nez v7, :cond_7

    .line 1423
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "ISO-10646-UCS-4"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Boolean;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v10, v8, v9

    move-object v0, v7

    goto/16 :goto_0

    .line 1425
    :cond_7
    move v7, v3

    if-nez v7, :cond_8

    move v7, v4

    if-nez v7, :cond_8

    move v7, v5

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_8

    move v7, v6

    if-nez v7, :cond_8

    .line 1428
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "ISO-10646-UCS-4"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v0, v7

    goto/16 :goto_0

    .line 1430
    :cond_8
    move v7, v3

    if-nez v7, :cond_9

    move v7, v4

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_9

    move v7, v5

    if-nez v7, :cond_9

    move v7, v6

    if-nez v7, :cond_9

    .line 1433
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "ISO-10646-UCS-4"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v0, v7

    goto/16 :goto_0

    .line 1435
    :cond_9
    move v7, v3

    if-nez v7, :cond_a

    move v7, v4

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_a

    move v7, v5

    if-nez v7, :cond_a

    move v7, v6

    const/16 v8, 0x3f

    if-ne v7, v8, :cond_a

    .line 1439
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "UTF-16BE"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Boolean;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v10, v8, v9

    move-object v0, v7

    goto/16 :goto_0

    .line 1441
    :cond_a
    move v7, v3

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_b

    move v7, v4

    if-nez v7, :cond_b

    move v7, v5

    const/16 v8, 0x3f

    if-ne v7, v8, :cond_b

    move v7, v6

    if-nez v7, :cond_b

    .line 1444
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "UTF-16LE"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Boolean;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v10, v8, v9

    move-object v0, v7

    goto/16 :goto_0

    .line 1446
    :cond_b
    move v7, v3

    const/16 v8, 0x4c

    if-ne v7, v8, :cond_c

    move v7, v4

    const/16 v8, 0x6f

    if-ne v7, v8, :cond_c

    move v7, v5

    const/16 v8, 0xa7

    if-ne v7, v8, :cond_c

    move v7, v6

    const/16 v8, 0x94

    if-ne v7, v8, :cond_c

    .line 1449
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "CP037"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v0, v7

    goto/16 :goto_0

    .line 1452
    :cond_c
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityManager;->defaultEncoding:[Ljava/lang/Object;

    move-object v0, v7

    goto/16 :goto_0
.end method

.method public getEntityReader()Lcom/sun/xml/stream/XMLEntityReader;
    .locals 2

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fEntityReader:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    return-object v0
.end method

.method public getEntityStore()Lcom/sun/xml/stream/XMLEntityStorage;
    .locals 2

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/stream/XMLEntityStorage;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    return-object v0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1598
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-eqz v4, :cond_2

    .line 1599
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    .line 1600
    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1601
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 1617
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    .local v1, "size":I
    .local v2, "i":I
    .local v3, "externalEntity":Lcom/sun/xml/stream/Entity$ScannedEntity;
    :goto_0
    return-object v0

    .line 1605
    .end local v1    # "size":I
    .end local v2    # "i":I
    .end local v3    # "externalEntity":Lcom/sun/xml/stream/Entity$ScannedEntity;
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    move v1, v4

    .line 1606
    .restart local v1    # "size":I
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .restart local v2    # "i":I
    :goto_1
    move v4, v2

    if-ltz v4, :cond_2

    .line 1607
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    move v5, v2

    .line 1608
    invoke-virtual {v4, v5}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v3, v4

    .line 1610
    .restart local v3    # "externalEntity":Lcom/sun/xml/stream/Entity$ScannedEntity;
    move-object v4, v3

    iget-object v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v4, :cond_1

    move-object v4, v3

    iget-object v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    .line 1611
    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1612
    move-object v4, v3

    iget-object v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 1606
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1617
    .end local v1    # "size":I
    .end local v2    # "i":I
    .end local v3    # "externalEntity":Lcom/sun/xml/stream/Entity$ScannedEntity;
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 1105
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v1, p1

    .local v1, "featureId":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    sget-object v4, Lcom/sun/xml/stream/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 1106
    sget-object v3, Lcom/sun/xml/stream/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1107
    sget-object v3, Lcom/sun/xml/stream/XMLEntityManager;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    move v4, v2

    aget-object v3, v3, v4

    move-object v0, v3

    .line 1110
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    :goto_1
    return-object v0

    .line 1105
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1110
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public getLineNumber()I
    .locals 6

    .prologue
    .line 1672
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-eqz v4, :cond_2

    .line 1673
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    invoke-virtual {v4}, Lcom/sun/xml/stream/Entity$ScannedEntity;->isExternal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1674
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    move v0, v4

    .line 1688
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    .local v1, "size":I
    .local v2, "i":I
    .local v3, "firstExternalEntity":Lcom/sun/xml/stream/Entity$ScannedEntity;
    :goto_0
    return v0

    .line 1678
    .end local v1    # "size":I
    .end local v2    # "i":I
    .end local v3    # "firstExternalEntity":Lcom/sun/xml/stream/Entity$ScannedEntity;
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    move v1, v4

    .line 1679
    .restart local v1    # "size":I
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .restart local v2    # "i":I
    :goto_1
    move v4, v2

    if-lez v4, :cond_2

    .line 1680
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v3, v4

    .line 1681
    .restart local v3    # "firstExternalEntity":Lcom/sun/xml/stream/Entity$ScannedEntity;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/xml/stream/Entity$ScannedEntity;->isExternal()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1682
    move-object v4, v3

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    move v0, v4

    goto :goto_0

    .line 1679
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1688
    .end local v1    # "size":I
    .end local v2    # "i":I
    .end local v3    # "firstExternalEntity":Lcom/sun/xml/stream/Entity$ScannedEntity;
    :cond_2
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1631
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-eqz v4, :cond_2

    .line 1632
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    .line 1633
    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1634
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 1650
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    .local v1, "size":I
    .local v2, "i":I
    .local v3, "externalEntity":Lcom/sun/xml/stream/Entity$ScannedEntity;
    :goto_0
    return-object v0

    .line 1638
    .end local v1    # "size":I
    .end local v2    # "i":I
    .end local v3    # "externalEntity":Lcom/sun/xml/stream/Entity$ScannedEntity;
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    move v1, v4

    .line 1639
    .restart local v1    # "size":I
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .restart local v2    # "i":I
    :goto_1
    move v4, v2

    if-ltz v4, :cond_2

    .line 1640
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    move v5, v2

    .line 1641
    invoke-virtual {v4, v5}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v3, v4

    .line 1643
    .restart local v3    # "externalEntity":Lcom/sun/xml/stream/Entity$ScannedEntity;
    move-object v4, v3

    iget-object v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v4, :cond_1

    move-object v4, v3

    iget-object v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    .line 1644
    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1645
    move-object v4, v3

    iget-object v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 1639
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1650
    .end local v1    # "size":I
    .end local v2    # "i":I
    .end local v3    # "externalEntity":Lcom/sun/xml/stream/Entity$ScannedEntity;
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1123
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v1, p1

    .local v1, "propertyId":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    sget-object v4, Lcom/sun/xml/stream/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 1124
    sget-object v3, Lcom/sun/xml/stream/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1125
    sget-object v3, Lcom/sun/xml/stream/XMLEntityManager;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    move-object v0, v3

    .line 1128
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    :goto_1
    return-object v0

    .line 1123
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1128
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1581
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1055
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    sget-object v1, Lcom/sun/xml/stream/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1093
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    sget-object v1, Lcom/sun/xml/stream/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    return-object v0
.end method

.method public isStandalone()Z
    .locals 2

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fStandalone:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    return v0
.end method

.method final print()V
    .locals 0

    .prologue
    .line 1827
    return-void
.end method

.method public reset(Lcom/sun/xml/stream/PropertyManager;)V
    .locals 6

    .prologue
    .line 915
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v1, p1

    .local v1, "propertyManager":Lcom/sun/xml/stream/PropertyManager;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/stream/XMLEntityStorage;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityStorage;->reset(Lcom/sun/xml/stream/PropertyManager;)V

    .line 917
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityManager;->fEntityReader:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->reset(Lcom/sun/xml/stream/PropertyManager;)V

    .line 919
    move-object v3, v0

    move-object v4, v1

    const-string v5, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/util/SymbolTable;

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEntityManager;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 920
    move-object v3, v0

    move-object v4, v1

    const-string v5, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/xml/stream/XMLErrorReporter;

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    .line 922
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    const-string v5, "http://apache.org/xml/properties/internal/stax-entity-resolver"

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/xml/stream/StaxEntityResolverWrapper;

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEntityManager;->fStaxEntityResolver:Lcom/sun/xml/stream/StaxEntityResolverWrapper;
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    .line 930
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 931
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->removeAllElements()V

    .line 932
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    .line 933
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLEntityManager;->fValidation:Z

    .line 934
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLEntityManager;->fExternalGeneralEntities:Z

    .line 935
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLEntityManager;->fExternalParameterEntities:Z

    .line 936
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLEntityManager;->fAllowJavaEncodings:Z

    .line 939
    return-void

    .line 924
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 925
    .local v2, "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEntityManager;->fStaxEntityResolver:Lcom/sun/xml/stream/StaxEntityResolverWrapper;

    goto :goto_0
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 967
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v1, p1

    .local v1, "componentManager":Lorg/apache/xerces/xni/parser/XMLComponentManager;
    move-object v5, v0

    move-object v6, v1

    :try_start_0
    const-string v7, "http://xml.org/sax/features/validation"

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLEntityManager;->fValidation:Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    .line 973
    :goto_0
    move-object v5, v0

    move-object v6, v1

    :try_start_1
    const-string v7, "http://xml.org/sax/features/external-general-entities"

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLEntityManager;->fExternalGeneralEntities:Z
    :try_end_1
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 977
    .line 979
    :goto_1
    move-object v5, v0

    move-object v6, v1

    :try_start_2
    const-string v7, "http://xml.org/sax/features/external-parameter-entities"

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLEntityManager;->fExternalParameterEntities:Z
    :try_end_2
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 983
    .line 987
    :goto_2
    move-object v5, v0

    move-object v6, v1

    :try_start_3
    const-string v7, "http://apache.org/xml/features/allow-java-encodings"

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLEntityManager;->fAllowJavaEncodings:Z
    :try_end_3
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 991
    .line 995
    :goto_3
    move-object v5, v0

    move-object v6, v1

    const-string v7, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/util/SymbolTable;

    iput-object v6, v5, Lcom/sun/xml/stream/XMLEntityManager;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 996
    move-object v5, v0

    move-object v6, v1

    const-string v7, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/xml/stream/XMLErrorReporter;

    iput-object v6, v5, Lcom/sun/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    .line 998
    move-object v5, v0

    move-object v6, v1

    :try_start_4
    const-string v7, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v6, v5, Lcom/sun/xml/stream/XMLEntityManager;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;
    :try_end_4
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1002
    .line 1005
    :goto_4
    move-object v5, v0

    move-object v6, v1

    :try_start_5
    const-string v7, "http://apache.org/xml/properties/internal/stax-entity-resolver"

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/xml/stream/StaxEntityResolverWrapper;

    iput-object v6, v5, Lcom/sun/xml/stream/XMLEntityManager;->fStaxEntityResolver:Lcom/sun/xml/stream/StaxEntityResolverWrapper;
    :try_end_5
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1009
    .line 1012
    :goto_5
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLEntityManager;->fStandalone:Z

    .line 1013
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    .line 1014
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->removeAllElements()V

    .line 1016
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    .line 1038
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEntityManager;->fDeclaredEntities:Ljava/util/Hashtable;

    if-eqz v5, :cond_0

    .line 1039
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEntityManager;->fDeclaredEntities:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    move-object v2, v5

    .line 1040
    .local v2, "keys":Ljava/util/Enumeration;
    :goto_6
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1041
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 1042
    .local v3, "key":Ljava/lang/Object;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEntityManager;->fDeclaredEntities:Ljava/util/Hashtable;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 1043
    .local v4, "value":Ljava/lang/Object;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1044
    goto :goto_6

    .line 969
    .end local v2    # "keys":Ljava/util/Enumeration;
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 970
    .local v2, "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLEntityManager;->fValidation:Z

    goto/16 :goto_0

    .line 975
    .end local v2    # "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 976
    .restart local v2    # "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLEntityManager;->fExternalGeneralEntities:Z

    goto/16 :goto_1

    .line 981
    .end local v2    # "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_2
    move-exception v5

    move-object v2, v5

    .line 982
    .restart local v2    # "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLEntityManager;->fExternalParameterEntities:Z

    goto/16 :goto_2

    .line 989
    .end local v2    # "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_3
    move-exception v5

    move-object v2, v5

    .line 990
    .restart local v2    # "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/xml/stream/XMLEntityManager;->fAllowJavaEncodings:Z

    goto/16 :goto_3

    .line 1000
    .end local v2    # "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_4
    move-exception v5

    move-object v2, v5

    .line 1001
    .restart local v2    # "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/xml/stream/XMLEntityManager;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    goto :goto_4

    .line 1007
    .end local v2    # "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_5
    move-exception v5

    move-object v2, v5

    .line 1008
    .restart local v2    # "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/xml/stream/XMLEntityManager;->fStaxEntityResolver:Lcom/sun/xml/stream/StaxEntityResolverWrapper;

    goto :goto_5

    .line 1047
    .end local v2    # "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    :cond_0
    return-void
.end method

.method public resolveEntity(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object/from16 v1, p1

    .local v1, "resourceIdentifier":Lorg/apache/xerces/xni/XMLResourceIdentifier;
    move-object v9, v1

    if-nez v9, :cond_0

    const/4 v9, 0x0

    move-object v0, v9

    .line 545
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    :goto_0
    return-object v0

    .line 491
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    :cond_0
    move-object v9, v1

    invoke-interface {v9}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 492
    .local v2, "publicId":Ljava/lang/String;
    move-object v9, v1

    invoke-interface {v9}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 493
    .local v3, "literalSystemId":Ljava/lang/String;
    move-object v9, v1

    invoke-interface {v9}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 494
    .local v4, "baseSystemId":Ljava/lang/String;
    move-object v9, v1

    invoke-interface {v9}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 501
    .local v5, "expandedSystemId":Ljava/lang/String;
    move-object v9, v5

    if-nez v9, :cond_5

    const/4 v9, 0x1

    :goto_1
    move v6, v9

    .line 505
    .local v6, "needExpand":Z
    move-object v9, v4

    if-nez v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-eqz v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v9, :cond_1

    .line 506
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v9}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 507
    move-object v9, v4

    if-eqz v9, :cond_1

    .line 508
    const/4 v9, 0x1

    move v6, v9

    .line 510
    :cond_1
    move v9, v6

    if-eqz v9, :cond_2

    .line 511
    move-object v9, v3

    move-object v10, v4

    invoke-static {v9, v10}, Lcom/sun/xml/stream/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 514
    :cond_2
    const/4 v9, 0x0

    move-object v7, v9

    .line 515
    .local v7, "xmlInputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityManager;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    if-eqz v9, :cond_3

    .line 516
    const/4 v9, 0x0

    move-object v8, v9

    .line 517
    .local v8, "ri":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    move-object v9, v1

    instance-of v9, v9, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    if-eqz v9, :cond_6

    .line 518
    move-object v9, v1

    check-cast v9, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object v8, v9

    .line 524
    :goto_2
    move-object v9, v8

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    invoke-virtual {v9, v10, v11, v12, v13}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityManager;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-object v10, v8

    invoke-interface {v9, v10}, Lorg/apache/xerces/xni/parser/XMLEntityResolver;->resolveEntity(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v9

    move-object v7, v9

    .line 533
    .end local v8    # "ri":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    :cond_3
    move-object v9, v7

    if-nez v9, :cond_4

    .line 537
    new-instance v9, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v9

    .line 545
    :cond_4
    move-object v9, v7

    move-object v0, v9

    goto :goto_0

    .line 501
    .end local v6    # "needExpand":Z
    .end local v7    # "xmlInputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 521
    .restart local v6    # "needExpand":Z
    .restart local v7    # "xmlInputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    .restart local v8    # "ri":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityManager;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v9}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    .line 522
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityManager;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object v8, v9

    goto :goto_2
.end method

.method public resolveEntityAsPerStax(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Lcom/sun/xml/stream/StaxXMLInputSource;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object/from16 v1, p1

    .local v1, "resourceIdentifier":Lorg/apache/xerces/xni/XMLResourceIdentifier;
    move-object v9, v1

    if-nez v9, :cond_0

    const/4 v9, 0x0

    move-object v0, v9

    .line 463
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    :goto_0
    return-object v0

    .line 405
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager;
    :cond_0
    move-object v9, v1

    invoke-interface {v9}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 406
    .local v2, "publicId":Ljava/lang/String;
    move-object v9, v1

    invoke-interface {v9}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 407
    .local v3, "literalSystemId":Ljava/lang/String;
    move-object v9, v1

    invoke-interface {v9}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 408
    .local v4, "baseSystemId":Ljava/lang/String;
    move-object v9, v1

    invoke-interface {v9}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 415
    .local v5, "expandedSystemId":Ljava/lang/String;
    move-object v9, v5

    if-nez v9, :cond_5

    const/4 v9, 0x1

    :goto_1
    move v6, v9

    .line 419
    .local v6, "needExpand":Z
    move-object v9, v4

    if-nez v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-eqz v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v9, :cond_1

    .line 420
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v9}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 421
    move-object v9, v4

    if-eqz v9, :cond_1

    .line 422
    const/4 v9, 0x1

    move v6, v9

    .line 424
    :cond_1
    move v9, v6

    if-eqz v9, :cond_2

    .line 425
    move-object v9, v3

    move-object v10, v4

    invoke-static {v9, v10}, Lcom/sun/xml/stream/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 428
    :cond_2
    const/4 v9, 0x0

    move-object v7, v9

    .line 429
    .local v7, "xmlInputSource":Lcom/sun/xml/stream/StaxXMLInputSource;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityManager;->fStaxEntityResolver:Lcom/sun/xml/stream/StaxEntityResolverWrapper;

    if-eqz v9, :cond_3

    .line 433
    const/4 v9, 0x0

    move-object v8, v9

    .line 434
    .local v8, "ri":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    move-object v9, v1

    instance-of v9, v9, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    if-eqz v9, :cond_6

    .line 435
    move-object v9, v1

    check-cast v9, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object v8, v9

    .line 441
    :goto_2
    move-object v9, v8

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    invoke-virtual {v9, v10, v11, v12, v13}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityManager;->fStaxEntityResolver:Lcom/sun/xml/stream/StaxEntityResolverWrapper;

    move-object v10, v8

    invoke-virtual {v9, v10}, Lcom/sun/xml/stream/StaxEntityResolverWrapper;->resolveEntity(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Lcom/sun/xml/stream/StaxXMLInputSource;

    move-result-object v9

    move-object v7, v9

    .line 449
    .end local v8    # "ri":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    :cond_3
    move-object v9, v7

    if-nez v9, :cond_7

    .line 453
    new-instance v9, Lcom/sun/xml/stream/StaxXMLInputSource;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    new-instance v11, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    invoke-direct {v12, v13, v14, v15}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lcom/sun/xml/stream/StaxXMLInputSource;-><init>(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    move-object v7, v9

    .line 463
    :cond_4
    :goto_3
    move-object v9, v7

    move-object v0, v9

    goto/16 :goto_0

    .line 415
    .end local v6    # "needExpand":Z
    .end local v7    # "xmlInputSource":Lcom/sun/xml/stream/StaxXMLInputSource;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 438
    .restart local v6    # "needExpand":Z
    .restart local v7    # "xmlInputSource":Lcom/sun/xml/stream/StaxXMLInputSource;
    .restart local v8    # "ri":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityManager;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v9}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    .line 439
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityManager;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object v8, v9

    goto :goto_2

    .line 454
    .end local v8    # "ri":Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
    :cond_7
    move-object v9, v7

    invoke-virtual {v9}, Lcom/sun/xml/stream/StaxXMLInputSource;->hasXMLStreamOrXMLEventReader()Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3
.end method

.method public setEntityHandler(Lcom/sun/xml/stream/XMLEntityHandler;)V
    .locals 4

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v1, p1

    .local v1, "entityHandler":Lcom/sun/xml/stream/XMLEntityHandler;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/sun/xml/stream/XMLEntityHandler;

    .line 398
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 1077
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v1, p1

    .local v1, "featureId":Ljava/lang/String;
    move v2, p2

    .local v2, "state":Z
    move-object v4, v1

    const-string v5, "http://apache.org/xml/features/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1078
    move-object v4, v1

    const-string v5, "http://apache.org/xml/features/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1079
    .local v3, "feature":Ljava/lang/String;
    move-object v4, v3

    const-string v5, "allow-java-encodings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1080
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lcom/sun/xml/stream/XMLEntityManager;->fAllowJavaEncodings:Z

    .line 1084
    .end local v3    # "feature":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1086
    return-void
.end method

.method public setStandalone(Z)V
    .locals 4

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move v1, p1

    .local v1, "standalone":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLEntityManager;->fStandalone:Z

    .line 381
    return-void
.end method

.method public startDTDEntity(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 696
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v1, p1

    .local v1, "xmlInputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v2, v0

    sget-object v3, Lcom/sun/xml/stream/XMLEntityManager;->DTDEntity:Ljava/lang/String;

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/xml/stream/XMLEntityManager;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;ZZ)V

    .line 697
    return-void
.end method

.method public startDocumentEntity(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 681
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v1, p1

    .local v1, "xmlInputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move-object v2, v0

    sget-object v3, Lcom/sun/xml/stream/XMLEntityManager;->XMLEntity:Ljava/lang/String;

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/xml/stream/XMLEntityManager;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;ZZ)V

    .line 682
    return-void
.end method

.method public startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;ZZ)V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 729
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object/from16 v4, p1

    .local v4, "name":Ljava/lang/String;
    move-object/from16 v5, p2

    .local v5, "xmlInputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move/from16 v6, p3

    .local v6, "literal":Z
    move/from16 v7, p4

    .local v7, "isExternal":Z
    move-object/from16 v23, v5

    invoke-virtual/range {v23 .. v23}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v8, v23

    .line 730
    .local v8, "publicId":Ljava/lang/String;
    move-object/from16 v23, v5

    invoke-virtual/range {v23 .. v23}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v9, v23

    .line 731
    .local v9, "literalSystemId":Ljava/lang/String;
    move-object/from16 v23, v5

    invoke-virtual/range {v23 .. v23}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v10, v23

    .line 732
    .local v10, "baseSystemId":Ljava/lang/String;
    move-object/from16 v23, v5

    invoke-virtual/range {v23 .. v23}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getEncoding()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v11, v23

    .line 733
    .local v11, "encoding":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v12, v23

    .line 736
    .local v12, "isBigEndian":Ljava/lang/Boolean;
    const/16 v23, 0x0

    move-object/from16 v13, v23

    .line 737
    .local v13, "stream":Ljava/io/InputStream;
    move-object/from16 v23, v5

    invoke-virtual/range {v23 .. v23}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v23

    move-object/from16 v14, v23

    .line 738
    .local v14, "reader":Ljava/io/Reader;
    move-object/from16 v23, v9

    move-object/from16 v24, v10

    invoke-static/range {v23 .. v24}, Lcom/sun/xml/stream/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v15, v23

    .line 739
    .local v15, "expandedSystemId":Ljava/lang/String;
    move-object/from16 v23, v10

    if-nez v23, :cond_0

    .line 740
    move-object/from16 v23, v15

    move-object/from16 v10, v23

    .line 742
    :cond_0
    move-object/from16 v23, v14

    if-nez v23, :cond_4

    .line 743
    move-object/from16 v23, v5

    invoke-virtual/range {v23 .. v23}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v23

    move-object/from16 v13, v23

    .line 744
    move-object/from16 v23, v13

    if-nez v23, :cond_1

    .line 746
    new-instance v23, Ljava/io/BufferedInputStream;

    move-object/from16 v34, v23

    move-object/from16 v23, v34

    move-object/from16 v24, v34

    new-instance v25, Ljava/net/URL;

    move-object/from16 v34, v25

    move-object/from16 v25, v34

    move-object/from16 v26, v34

    move-object/from16 v27, v15

    invoke-direct/range {v26 .. v27}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v13, v23

    .line 749
    :cond_1
    new-instance v23, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;

    move-object/from16 v34, v23

    move-object/from16 v23, v34

    move-object/from16 v24, v34

    move-object/from16 v25, v3

    move-object/from16 v26, v13

    invoke-direct/range {v24 .. v26}, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;-><init>(Lcom/sun/xml/stream/XMLEntityManager;Ljava/io/InputStream;)V

    move-object/from16 v13, v23

    .line 752
    move-object/from16 v23, v11

    if-nez v23, :cond_8

    .line 754
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v16, v23

    .line 755
    .local v16, "b4":[B
    const/16 v23, 0x0

    move/from16 v17, v23

    .line 756
    .local v17, "count":I
    :goto_0
    move/from16 v23, v17

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 757
    move-object/from16 v23, v16

    move/from16 v24, v17

    move-object/from16 v25, v13

    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->read()I

    move-result v25

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 756
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 759
    :cond_2
    move/from16 v23, v17

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 760
    move-object/from16 v23, v3

    move-object/from16 v24, v16

    move/from16 v25, v17

    invoke-virtual/range {v23 .. v25}, Lcom/sun/xml/stream/XMLEntityManager;->getEncodingName([BI)[Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v18, v23

    .line 761
    .local v18, "encodingDesc":[Ljava/lang/Object;
    move-object/from16 v23, v18

    const/16 v24, 0x0

    aget-object v23, v23, v24

    check-cast v23, Ljava/lang/String;

    check-cast v23, Ljava/lang/String;

    move-object/from16 v11, v23

    .line 762
    move-object/from16 v23, v18

    const/16 v24, 0x1

    aget-object v23, v23, v24

    check-cast v23, Ljava/lang/Boolean;

    check-cast v23, Ljava/lang/Boolean;

    move-object/from16 v12, v23

    .line 763
    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->reset()V

    .line 764
    const/16 v23, 0x0

    move/from16 v19, v23

    .line 768
    .local v19, "offset":I
    move/from16 v23, v17

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_3

    move-object/from16 v23, v11

    const-string v24, "UTF-8"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 769
    move-object/from16 v23, v16

    const/16 v24, 0x0

    aget-byte v23, v23, v24

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v20, v23

    .line 770
    .local v20, "b0":I
    move-object/from16 v23, v16

    const/16 v24, 0x1

    aget-byte v23, v23, v24

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v21, v23

    .line 771
    .local v21, "b1":I
    move-object/from16 v23, v16

    const/16 v24, 0x2

    aget-byte v23, v23, v24

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v22, v23

    .line 773
    .local v22, "b2":I
    move/from16 v23, v20

    const/16 v24, 0xef

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    move/from16 v23, v21

    const/16 v24, 0xbb

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    move/from16 v23, v22

    const/16 v24, 0xbf

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 775
    move-object/from16 v23, v13

    const-wide/16 v24, 0x3

    invoke-virtual/range {v23 .. v25}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v23

    .line 778
    .end local v20    # "b0":I
    .end local v21    # "b1":I
    .end local v22    # "b2":I
    :cond_3
    move-object/from16 v23, v3

    move-object/from16 v24, v13

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    invoke-virtual/range {v23 .. v26}, Lcom/sun/xml/stream/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v23

    move-object/from16 v14, v23

    .line 783
    .line 804
    .end local v16    # "b4":[B
    .end local v17    # "count":I
    .end local v18    # "encodingDesc":[Ljava/lang/Object;
    .end local v19    # "offset":I
    :cond_4
    :goto_1
    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 805
    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 810
    :cond_5
    move-object/from16 v23, v3

    new-instance v24, Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v34, v24

    move-object/from16 v24, v34

    move-object/from16 v25, v34

    move-object/from16 v26, v4

    new-instance v27, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v34, v27

    move-object/from16 v27, v34

    move-object/from16 v28, v34

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v31, v10

    move-object/from16 v32, v15

    invoke-direct/range {v28 .. v32}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v30, v11

    move/from16 v31, v6

    const/16 v32, 0x0

    move/from16 v33, v7

    invoke-direct/range {v25 .. v33}, Lcom/sun/xml/stream/Entity$ScannedEntity;-><init>(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/io/InputStream;Ljava/io/Reader;Ljava/lang/String;ZZZ)V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    .line 815
    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/xml/stream/XMLEntityManager;->fEntityReader:Lcom/sun/xml/stream/XMLEntityReaderImpl;

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->setCurrentEntity(Lcom/sun/xml/stream/Entity$ScannedEntity;)V

    .line 819
    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/xml/stream/XMLEntityManager;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v23, v0

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v15

    invoke-virtual/range {v23 .. v27}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/sun/xml/stream/XMLEntityHandler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 822
    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/sun/xml/stream/XMLEntityHandler;

    move-object/from16 v23, v0

    move-object/from16 v24, v4

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/xml/stream/XMLEntityManager;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v25, v0

    move-object/from16 v26, v11

    invoke-interface/range {v23 .. v26}, Lcom/sun/xml/stream/XMLEntityHandler;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V

    .line 826
    :cond_6
    return-void

    .line 781
    .restart local v16    # "b4":[B
    .restart local v17    # "count":I
    :cond_7
    move-object/from16 v23, v3

    move-object/from16 v24, v13

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    invoke-virtual/range {v23 .. v26}, Lcom/sun/xml/stream/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v23

    move-object/from16 v14, v23

    goto/16 :goto_1

    .line 787
    .end local v16    # "b4":[B
    .end local v17    # "count":I
    :cond_8
    move-object/from16 v23, v3

    move-object/from16 v24, v13

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    invoke-virtual/range {v23 .. v26}, Lcom/sun/xml/stream/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v23

    move-object/from16 v14, v23

    goto/16 :goto_1
.end method

.method public startEntity(Ljava/lang/String;Z)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 563
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object/from16 v2, p1

    .local v2, "entityName":Ljava/lang/String;
    move/from16 v3, p2

    .local v3, "literal":Z
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/stream/XMLEntityStorage;

    invoke-virtual {v15}, Lcom/sun/xml/stream/XMLEntityStorage;->getDeclaredEntities()Ljava/util/Hashtable;

    move-result-object v15

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/xml/stream/Entity;

    move-object v4, v15

    .line 564
    .local v4, "entity":Lcom/sun/xml/stream/Entity;
    move-object v15, v4

    if-nez v15, :cond_1

    .line 565
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/sun/xml/stream/XMLEntityHandler;

    if-eqz v15, :cond_0

    .line 566
    const/4 v15, 0x0

    move-object v5, v15

    .line 567
    .local v5, "encoding":Ljava/lang/String;
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v15}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    .line 568
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/sun/xml/stream/XMLEntityHandler;

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/xml/stream/XMLEntityManager;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v17, v0

    move-object/from16 v18, v5

    invoke-interface/range {v15 .. v18}, Lcom/sun/xml/stream/XMLEntityHandler;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V

    .line 569
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/sun/xml/stream/XMLEntityHandler;

    move-object/from16 v16, v2

    invoke-interface/range {v15 .. v16}, Lcom/sun/xml/stream/XMLEntityHandler;->endEntity(Ljava/lang/String;)V

    .line 571
    .line 668
    .end local v5    # "encoding":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    move-object v15, v4

    invoke-virtual {v15}, Lcom/sun/xml/stream/Entity;->isExternal()Z

    move-result v15

    move v5, v15

    .line 576
    .local v5, "external":Z
    move v15, v5

    if-eqz v15, :cond_9

    .line 577
    move-object v15, v4

    invoke-virtual {v15}, Lcom/sun/xml/stream/Entity;->isUnparsed()Z

    move-result v15

    move v6, v15

    .line 578
    .local v6, "unparsed":Z
    move-object v15, v2

    const-string v16, "%"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    move v7, v15

    .line 579
    .local v7, "parameter":Z
    move v15, v7

    if-nez v15, :cond_5

    const/4 v15, 0x1

    :goto_1
    move v8, v15

    .line 580
    .local v8, "general":Z
    move v15, v6

    if-nez v15, :cond_3

    move v15, v8

    if-eqz v15, :cond_2

    move-object v15, v1

    iget-boolean v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fExternalGeneralEntities:Z

    if-eqz v15, :cond_3

    :cond_2
    move v15, v7

    if-eqz v15, :cond_9

    move-object v15, v1

    iget-boolean v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fExternalParameterEntities:Z

    if-nez v15, :cond_9

    .line 583
    :cond_3
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/sun/xml/stream/XMLEntityHandler;

    if-eqz v15, :cond_4

    .line 584
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v15}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    .line 585
    const/4 v15, 0x0

    move-object v9, v15

    .line 586
    .local v9, "encoding":Ljava/lang/String;
    move-object v15, v4

    check-cast v15, Lcom/sun/xml/stream/Entity$ExternalEntity;

    move-object v10, v15

    .line 590
    .local v10, "externalEntity":Lcom/sun/xml/stream/Entity$ExternalEntity;
    move-object v15, v10

    iget-object v15, v15, Lcom/sun/xml/stream/Entity$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v15, :cond_6

    move-object v15, v10

    iget-object v15, v15, Lcom/sun/xml/stream/Entity$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v15}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v15

    :goto_2
    move-object v11, v15

    .line 591
    .local v11, "extLitSysId":Ljava/lang/String;
    move-object v15, v10

    iget-object v15, v15, Lcom/sun/xml/stream/Entity$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v15, :cond_7

    move-object v15, v10

    iget-object v15, v15, Lcom/sun/xml/stream/Entity$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v15}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v15

    :goto_3
    move-object v12, v15

    .line 592
    .local v12, "extBaseSysId":Ljava/lang/String;
    move-object v15, v11

    move-object/from16 v16, v12

    invoke-static/range {v15 .. v16}, Lcom/sun/xml/stream/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v13, v15

    .line 593
    .local v13, "expandedSystemId":Ljava/lang/String;
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/xml/stream/Entity$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/xml/stream/Entity$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-object/from16 v16, v0

    .line 594
    invoke-interface/range {v16 .. v16}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v16

    :goto_4
    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    .line 593
    invoke-virtual/range {v15 .. v19}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/sun/xml/stream/XMLEntityHandler;

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/xml/stream/XMLEntityManager;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v17, v0

    move-object/from16 v18, v9

    invoke-interface/range {v15 .. v18}, Lcom/sun/xml/stream/XMLEntityHandler;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V

    .line 597
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/sun/xml/stream/XMLEntityHandler;

    move-object/from16 v16, v2

    invoke-interface/range {v15 .. v16}, Lcom/sun/xml/stream/XMLEntityHandler;->endEntity(Ljava/lang/String;)V

    .line 599
    .end local v9    # "encoding":Ljava/lang/String;
    .end local v10    # "externalEntity":Lcom/sun/xml/stream/Entity$ExternalEntity;
    .end local v11    # "extLitSysId":Ljava/lang/String;
    .end local v12    # "extBaseSysId":Ljava/lang/String;
    .end local v13    # "expandedSystemId":Ljava/lang/String;
    :cond_4
    goto/16 :goto_0

    .line 579
    .end local v8    # "general":Z
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 590
    .restart local v8    # "general":Z
    .restart local v9    # "encoding":Ljava/lang/String;
    .restart local v10    # "externalEntity":Lcom/sun/xml/stream/Entity$ExternalEntity;
    :cond_6
    const/4 v15, 0x0

    goto :goto_2

    .line 591
    .restart local v11    # "extLitSysId":Ljava/lang/String;
    :cond_7
    const/4 v15, 0x0

    goto :goto_3

    .line 594
    .restart local v12    # "extBaseSysId":Ljava/lang/String;
    .restart local v13    # "expandedSystemId":Ljava/lang/String;
    :cond_8
    const/16 v16, 0x0

    goto :goto_4

    .line 604
    .end local v6    # "unparsed":Z
    .end local v7    # "parameter":Z
    .end local v8    # "general":Z
    .end local v9    # "encoding":Ljava/lang/String;
    .end local v10    # "externalEntity":Lcom/sun/xml/stream/Entity$ExternalEntity;
    .end local v11    # "extLitSysId":Ljava/lang/String;
    .end local v12    # "extBaseSysId":Ljava/lang/String;
    .end local v13    # "expandedSystemId":Ljava/lang/String;
    :cond_9
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v15}, Ljava/util/Stack;->size()I

    move-result v15

    move v6, v15

    .line 605
    .local v6, "size":I
    move v15, v6

    move v7, v15

    .local v7, "i":I
    :goto_5
    move v15, v7

    if-ltz v15, :cond_12

    .line 606
    move v15, v7

    move/from16 v16, v6

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    .line 608
    :goto_6
    move-object v8, v15

    .line 609
    .local v8, "activeEntity":Lcom/sun/xml/stream/Entity;
    move-object v15, v8

    iget-object v15, v15, Lcom/sun/xml/stream/Entity;->name:Ljava/lang/String;

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_11

    .line 610
    move-object v15, v2

    move-object v9, v15

    .line 611
    .local v9, "path":Ljava/lang/String;
    move v15, v7

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    move v10, v15

    .local v10, "j":I
    :goto_7
    move v15, v10

    move/from16 v16, v6

    move/from16 v0, v16

    if-ge v15, v0, :cond_b

    .line 612
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    move/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/xml/stream/Entity;

    move-object v8, v15

    .line 613
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " -> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/xml/stream/Entity;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v9, v15

    .line 611
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 606
    .end local v8    # "activeEntity":Lcom/sun/xml/stream/Entity;
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "j":I
    :cond_a
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    move/from16 v16, v7

    .line 608
    invoke-virtual/range {v15 .. v16}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/xml/stream/Entity;

    goto :goto_6

    .line 615
    .restart local v8    # "activeEntity":Lcom/sun/xml/stream/Entity;
    .restart local v9    # "path":Ljava/lang/String;
    .restart local v10    # "j":I
    :cond_b
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " -> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/xml/stream/Entity$ScannedEntity;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v9, v15

    .line 616
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " -> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v9, v15

    .line 617
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/xml/stream/XMLEntityManager;->getEntityReader()Lcom/sun/xml/stream/XMLEntityReader;

    move-result-object v16

    const-string v17, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v18, "RecursiveReference"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x0

    move-object/from16 v22, v2

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x1

    move-object/from16 v22, v9

    aput-object v22, v20, v21

    const/16 v20, 0x2

    invoke-virtual/range {v15 .. v20}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 622
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/sun/xml/stream/XMLEntityHandler;

    if-eqz v15, :cond_d

    .line 623
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v15}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    .line 624
    const/4 v15, 0x0

    move-object v10, v15

    .line 625
    .local v10, "encoding":Ljava/lang/String;
    move v15, v5

    if-eqz v15, :cond_c

    .line 626
    move-object v15, v4

    check-cast v15, Lcom/sun/xml/stream/Entity$ExternalEntity;

    move-object v11, v15

    .line 628
    .local v11, "externalEntity":Lcom/sun/xml/stream/Entity$ExternalEntity;
    move-object v15, v11

    iget-object v15, v15, Lcom/sun/xml/stream/Entity$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v15, :cond_e

    move-object v15, v11

    iget-object v15, v15, Lcom/sun/xml/stream/Entity$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v15}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v15

    :goto_8
    move-object v12, v15

    .line 629
    .local v12, "extLitSysId":Ljava/lang/String;
    move-object v15, v11

    iget-object v15, v15, Lcom/sun/xml/stream/Entity$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v15, :cond_f

    move-object v15, v11

    iget-object v15, v15, Lcom/sun/xml/stream/Entity$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v15}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v15

    :goto_9
    move-object v13, v15

    .line 630
    .local v13, "extBaseSysId":Ljava/lang/String;
    move-object v15, v12

    move-object/from16 v16, v13

    invoke-static/range {v15 .. v16}, Lcom/sun/xml/stream/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v14, v15

    .line 631
    .local v14, "expandedSystemId":Ljava/lang/String;
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/xml/stream/Entity$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-object/from16 v16, v0

    if-eqz v16, :cond_10

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/xml/stream/Entity$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-object/from16 v16, v0

    .line 632
    invoke-interface/range {v16 .. v16}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v16

    :goto_a
    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    .line 631
    invoke-virtual/range {v15 .. v19}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    .end local v11    # "externalEntity":Lcom/sun/xml/stream/Entity$ExternalEntity;
    .end local v12    # "extLitSysId":Ljava/lang/String;
    .end local v13    # "extBaseSysId":Ljava/lang/String;
    .end local v14    # "expandedSystemId":Ljava/lang/String;
    :cond_c
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/sun/xml/stream/XMLEntityHandler;

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/xml/stream/XMLEntityManager;->fResourceIdentifier:Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    invoke-interface/range {v15 .. v18}, Lcom/sun/xml/stream/XMLEntityHandler;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V

    .line 637
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/xml/stream/XMLEntityManager;->fEntityHandler:Lcom/sun/xml/stream/XMLEntityHandler;

    move-object/from16 v16, v2

    invoke-interface/range {v15 .. v16}, Lcom/sun/xml/stream/XMLEntityHandler;->endEntity(Ljava/lang/String;)V

    .line 640
    .end local v10    # "encoding":Ljava/lang/String;
    :cond_d
    goto/16 :goto_0

    .line 628
    .restart local v10    # "encoding":Ljava/lang/String;
    .restart local v11    # "externalEntity":Lcom/sun/xml/stream/Entity$ExternalEntity;
    :cond_e
    const/4 v15, 0x0

    goto :goto_8

    .line 629
    .restart local v12    # "extLitSysId":Ljava/lang/String;
    :cond_f
    const/4 v15, 0x0

    goto :goto_9

    .line 632
    .restart local v13    # "extBaseSysId":Ljava/lang/String;
    .restart local v14    # "expandedSystemId":Ljava/lang/String;
    :cond_10
    const/16 v16, 0x0

    goto :goto_a

    .line 605
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "encoding":Ljava/lang/String;
    .end local v11    # "externalEntity":Lcom/sun/xml/stream/Entity$ExternalEntity;
    .end local v12    # "extLitSysId":Ljava/lang/String;
    .end local v13    # "extBaseSysId":Ljava/lang/String;
    .end local v14    # "expandedSystemId":Ljava/lang/String;
    :cond_11
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_5

    .line 645
    .end local v8    # "activeEntity":Lcom/sun/xml/stream/Entity;
    :cond_12
    const/4 v15, 0x0

    move-object v7, v15

    .line 646
    .local v7, "staxInputSource":Lcom/sun/xml/stream/StaxXMLInputSource;
    const/4 v15, 0x0

    move-object v8, v15

    .line 648
    .local v8, "xmlInputSource":Lorg/apache/xerces/xni/parser/XMLInputSource;
    move v15, v5

    if-eqz v15, :cond_13

    .line 649
    move-object v15, v4

    check-cast v15, Lcom/sun/xml/stream/Entity$ExternalEntity;

    move-object v9, v15

    .line 650
    .local v9, "externalEntity":Lcom/sun/xml/stream/Entity$ExternalEntity;
    move-object v15, v1

    move-object/from16 v16, v9

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/xml/stream/Entity$ExternalEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sun/xml/stream/XMLEntityManager;->resolveEntityAsPerStax(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Lcom/sun/xml/stream/StaxXMLInputSource;

    move-result-object v15

    move-object v7, v15

    .line 656
    move-object v15, v7

    invoke-virtual {v15}, Lcom/sun/xml/stream/StaxXMLInputSource;->getXMLInputSource()Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v15

    move-object v8, v15

    .line 666
    .end local v9    # "externalEntity":Lcom/sun/xml/stream/Entity$ExternalEntity;
    :goto_b
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v8

    move/from16 v18, v3

    move/from16 v19, v5

    invoke-virtual/range {v15 .. v19}, Lcom/sun/xml/stream/XMLEntityManager;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;ZZ)V

    .line 668
    goto/16 :goto_0

    .line 660
    :cond_13
    move-object v15, v4

    check-cast v15, Lcom/sun/xml/stream/Entity$InternalEntity;

    move-object v9, v15

    .line 661
    .local v9, "internalEntity":Lcom/sun/xml/stream/Entity$InternalEntity;
    new-instance v15, Ljava/io/StringReader;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v17, v9

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/xml/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v10, v15

    .line 662
    .local v10, "reader":Ljava/io/Reader;
    new-instance v15, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v10

    const/16 v21, 0x0

    invoke-direct/range {v16 .. v21}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    move-object v8, v15

    goto :goto_b
.end method

.method public startExternalSubset()V
    .locals 3

    .prologue
    .line 702
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLEntityManager;->fInExternalSubset:Z

    .line 703
    return-void
.end method

.method public test()V
    .locals 6

    .prologue
    .line 2008
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/stream/XMLEntityStorage;

    const-string v2, "entityUsecase1"

    const/4 v3, 0x0

    const-string v4, "/space/home/stax/sun/6thJan2004/zephyr/data/test.txt"

    const-string v5, "/space/home/stax/sun/6thJan2004/zephyr/data/entity.xml"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sun/xml/stream/XMLEntityStorage;->addExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/stream/XMLEntityStorage;

    const-string v2, "entityUsecase2"

    const-string v3, "<Test>value</Test>"

    invoke-virtual {v1, v2, v3}, Lcom/sun/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/stream/XMLEntityStorage;

    const-string v2, "entityUsecase3"

    const-string v3, "value3"

    invoke-virtual {v1, v2, v3}, Lcom/sun/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/stream/XMLEntityStorage;

    const-string v2, "text"

    const-string v3, "Hello World."

    invoke-virtual {v1, v2, v3}, Lcom/sun/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/stream/XMLEntityStorage;

    const-string v2, "empty-element"

    const-string v3, "<foo/>"

    invoke-virtual {v1, v2, v3}, Lcom/sun/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/stream/XMLEntityStorage;

    const-string v2, "balanced-element"

    const-string v3, "<foo></foo>"

    invoke-virtual {v1, v2, v3}, Lcom/sun/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/stream/XMLEntityStorage;

    const-string v2, "balanced-element-with-text"

    const-string v3, "<foo>Hello, World</foo>"

    invoke-virtual {v1, v2, v3}, Lcom/sun/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/stream/XMLEntityStorage;

    const-string v2, "balanced-element-with-entity"

    const-string v3, "<foo>&text;</foo>"

    invoke-virtual {v1, v2, v3}, Lcom/sun/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/stream/XMLEntityStorage;

    const-string v2, "unbalanced-entity"

    const-string v3, "<foo>"

    invoke-virtual {v1, v2, v3}, Lcom/sun/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/stream/XMLEntityStorage;

    const-string v2, "recursive-entity"

    const-string v3, "<foo>&recursive-entity2;</foo>"

    invoke-virtual {v1, v2, v3}, Lcom/sun/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/stream/XMLEntityStorage;

    const-string v2, "recursive-entity2"

    const-string v3, "<bar>&recursive-entity3;</bar>"

    invoke-virtual {v1, v2, v3}, Lcom/sun/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/stream/XMLEntityStorage;

    const-string v2, "recursive-entity3"

    const-string v3, "<baz>&recursive-entity;</baz>"

    invoke-virtual {v1, v2, v3}, Lcom/sun/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2024
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/stream/XMLEntityStorage;

    const-string v2, "ch"

    const-string v3, "&#x00A9;"

    invoke-virtual {v1, v2, v3}, Lcom/sun/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/stream/XMLEntityStorage;

    const-string v2, "ch1"

    const-string v3, "&#84;"

    invoke-virtual {v1, v2, v3}, Lcom/sun/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager;->fEntityStorage:Lcom/sun/xml/stream/XMLEntityStorage;

    const-string v2, "% ch2"

    const-string v3, "param"

    invoke-virtual {v1, v2, v3}, Lcom/sun/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    return-void
.end method
