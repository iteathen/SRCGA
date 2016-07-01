.class public Lcom/sun/xml/stream/XMLEntityReaderImpl;
.super Lcom/sun/xml/stream/XMLEntityReader;
.source "XMLEntityReaderImpl.java"


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field private static final DEBUG_BUFFER:Z = false

.field private static final DEBUG_ENCODINGS:Z = false

.field private static final DEBUG_SKIP_STRING:Z = false

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field public static final validContent:[Z

.field public static final validNames:[Z


# instance fields
.field protected fAllowJavaEncodings:Z

.field protected fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

.field protected fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

.field protected fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

.field protected fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field isExternal:Z

.field private listeners:Ljava/util/Vector;

.field scannedName:[C

.field whiteSpaceInfoNeeded:Z

.field whiteSpaceLen:I

.field whiteSpaceLookup:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 115
    const/16 v1, 0x7f

    new-array v1, v1, [Z

    sput-object v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->validContent:[Z

    .line 116
    const/16 v1, 0x7f

    new-array v1, v1, [Z

    sput-object v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    .line 159
    const/16 v1, 0x20

    move v0, v1

    .local v0, "i":C
    :goto_0
    move v1, v0

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_0

    .line 160
    sget-object v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->validContent:[Z

    move v2, v0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 159
    move v1, v0

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    move v0, v1

    goto :goto_0

    .line 162
    :cond_0
    sget-object v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->validContent:[Z

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 163
    sget-object v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->validContent:[Z

    const/16 v2, 0x26

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    .line 164
    sget-object v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->validContent:[Z

    const/16 v2, 0x3c

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    .line 165
    sget-object v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->validContent:[Z

    const/16 v2, 0x5d

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    .line 167
    const/16 v1, 0x41

    move v0, v1

    .local v0, "i":I
    :goto_1
    move v1, v0

    const/16 v2, 0x5a

    if-gt v1, v2, :cond_1

    .line 168
    sget-object v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    move v2, v0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    :cond_1
    const/16 v1, 0x61

    move v0, v1

    :goto_2
    move v1, v0

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_2

    .line 171
    sget-object v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    move v2, v0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 173
    :cond_2
    const/16 v1, 0x30

    move v0, v1

    :goto_3
    move v1, v0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_3

    .line 174
    sget-object v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    move v2, v0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 176
    :cond_3
    sget-object v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    const/16 v2, 0x2d

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 177
    sget-object v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    const/16 v2, 0x2e

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 178
    sget-object v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    const/16 v2, 0x3a

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 179
    sget-object v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    const/16 v2, 0x5f

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 180
    return-void
.end method

.method public constructor <init>(Lcom/sun/xml/stream/PropertyManager;Lcom/sun/xml/stream/XMLEntityManager;)V
    .locals 7

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, p1

    .local v1, "propertyManager":Lcom/sun/xml/stream/PropertyManager;
    move-object v2, p2

    .local v2, "entityManager":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/XMLEntityReader;-><init>()V

    .line 108
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    .line 114
    move-object v3, v0

    new-instance v4, Ljava/util/Vector;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->listeners:Ljava/util/Vector;

    .line 126
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 127
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    .line 128
    move-object v3, v0

    const/16 v4, 0x64

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    .line 131
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    .line 132
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceInfoNeeded:Z

    .line 133
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scannedName:[C

    .line 155
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    .line 157
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    .line 201
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    .line 202
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->reset(Lcom/sun/xml/stream/PropertyManager;)V

    .line 203
    return-void
.end method

.method public constructor <init>(Lcom/sun/xml/stream/XMLEntityManager;)V
    .locals 6

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, p1

    .local v1, "entityManager":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/XMLEntityReader;-><init>()V

    .line 108
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    .line 114
    move-object v2, v0

    new-instance v3, Ljava/util/Vector;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->listeners:Ljava/util/Vector;

    .line 126
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 127
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    .line 128
    move-object v2, v0

    const/16 v3, 0x64

    new-array v3, v3, [I

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    .line 131
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    .line 132
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceInfoNeeded:Z

    .line 133
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scannedName:[C

    .line 155
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    .line 157
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    .line 192
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    .line 193
    return-void
.end method

.method private invokeListeners(I)V
    .locals 6

    .prologue
    .line 2033
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move v1, p1

    .local v1, "loadPos":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEntityReaderImpl;->listeners:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 2034
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityReaderImpl;->listeners:Ljava/util/Vector;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/xml/stream/XMLBufferListener;

    move-object v3, v4

    .line 2035
    .local v3, "listener":Lcom/sun/xml/stream/XMLBufferListener;
    move-object v4, v3

    move v5, v1

    invoke-interface {v4, v5}, Lcom/sun/xml/stream/XMLBufferListener;->refresh(I)V

    .line 2033
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2037
    .end local v3    # "listener":Lcom/sun/xml/stream/XMLBufferListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public arrangeCapacity(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1550
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move v1, p1

    .local v1, "length":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->arrangeCapacity(IZ)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    return v0
.end method

.method public arrangeCapacity(IZ)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1565
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move v1, p1

    .local v1, "length":I
    move v2, p2

    .local v2, "changeEntity":Z
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v5, v5, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v5, v6

    move v6, v1

    if-lt v5, v6, :cond_0

    .line 1566
    const/4 v5, 0x1

    move v0, v5

    .line 1605
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :goto_0
    return v0

    .line 1574
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_0
    const/4 v5, 0x0

    move v3, v5

    .line 1576
    .local v3, "entityChanged":Z
    :cond_1
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v5, v5, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v5, v6

    move v6, v1

    if-ge v5, v6, :cond_3

    .line 1577
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v5, v5, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    array-length v5, v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v5, v6

    move v6, v1

    if-ge v5, v6, :cond_2

    .line 1578
    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1579
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v5, v5, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1580
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    .line 1581
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1584
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v5, v5, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v5, v6

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 1585
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v5, v5, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v4, v5

    .line 1586
    .local v4, "pos":I
    move-object v5, v0

    move v6, v4

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1587
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v5

    move v3, v5

    .line 1588
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move v6, v4

    iput v6, v5, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1589
    move v5, v3

    if-eqz v5, :cond_4

    .line 1601
    .end local v4    # "pos":I
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v5, v5, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v5, v6

    move v6, v1

    if-lt v5, v6, :cond_5

    .line 1602
    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_0

    .line 1590
    .restart local v4    # "pos":I
    :cond_4
    goto/16 :goto_1

    .line 1605
    .end local v4    # "pos":I
    :cond_5
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0
.end method

.method protected createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1776
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object/from16 v1, p1

    .local v1, "inputStream":Ljava/io/InputStream;
    move-object/from16 v2, p2

    .local v2, "encoding":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "isBigEndian":Ljava/lang/Boolean;
    move-object v8, v2

    if-nez v8, :cond_0

    .line 1777
    const-string v8, "UTF-8"

    move-object v2, v8

    .line 1781
    :cond_0
    move-object v8, v2

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 1782
    .local v4, "ENCODING":Ljava/lang/String;
    move-object v8, v4

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1786
    new-instance v8, Lorg/apache/xerces/impl/io/UTF8Reader;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v13, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v12, v13}, Lcom/sun/xml/stream/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    invoke-virtual {v13}, Lcom/sun/xml/stream/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v13

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    move-object v0, v8

    .line 1865
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :goto_0
    return-object v0

    .line 1788
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_1
    move-object v8, v4

    const-string v9, "US-ASCII"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1792
    new-instance v8, Lorg/apache/xerces/impl/io/ASCIIReader;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v13, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v12, v13}, Lcom/sun/xml/stream/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    invoke-virtual {v13}, Lcom/sun/xml/stream/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v13

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;ILorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    move-object v0, v8

    goto :goto_0

    .line 1794
    :cond_2
    move-object v8, v4

    const-string v9, "ISO-10646-UCS-4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1795
    move-object v8, v3

    if-eqz v8, :cond_4

    .line 1796
    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move v5, v8

    .line 1797
    .local v5, "isBE":Z
    move v8, v5

    if-eqz v8, :cond_3

    .line 1798
    new-instance v8, Lorg/apache/xerces/impl/io/UCSReader;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v1

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    move-object v0, v8

    goto :goto_0

    .line 1800
    :cond_3
    new-instance v8, Lorg/apache/xerces/impl/io/UCSReader;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v1

    const/4 v11, 0x4

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    move-object v0, v8

    goto :goto_0

    .line 1803
    .end local v5    # "isBE":Z
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v9, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v10, "EncodingByteOrderUnsupported"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v2

    aput-object v14, v12, v13

    const/4 v12, 0x2

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1809
    :cond_5
    move-object v8, v4

    const-string v9, "ISO-10646-UCS-2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1810
    move-object v8, v3

    if-eqz v8, :cond_7

    .line 1811
    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move v5, v8

    .line 1812
    .restart local v5    # "isBE":Z
    move v8, v5

    if-eqz v8, :cond_6

    .line 1813
    new-instance v8, Lorg/apache/xerces/impl/io/UCSReader;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v1

    const/4 v11, 0x2

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    move-object v0, v8

    goto/16 :goto_0

    .line 1815
    :cond_6
    new-instance v8, Lorg/apache/xerces/impl/io/UCSReader;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v1

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    move-object v0, v8

    goto/16 :goto_0

    .line 1818
    .end local v5    # "isBE":Z
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v9, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v10, "EncodingByteOrderUnsupported"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v2

    aput-object v14, v12, v13

    const/4 v12, 0x2

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1826
    :cond_8
    move-object v8, v2

    invoke-static {v8}, Lorg/apache/xerces/util/XMLChar;->isValidIANAEncoding(Ljava/lang/String;)Z

    move-result v8

    move v5, v8

    .line 1827
    .local v5, "validIANA":Z
    move-object v8, v2

    invoke-static {v8}, Lorg/apache/xerces/util/XMLChar;->isValidJavaEncoding(Ljava/lang/String;)Z

    move-result v8

    move v6, v8

    .line 1828
    .local v6, "validJava":Z
    move v8, v5

    if-eqz v8, :cond_9

    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fAllowJavaEncodings:Z

    if-eqz v8, :cond_a

    move v8, v6

    if-nez v8, :cond_a

    .line 1829
    :cond_9
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v9, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v10, "EncodingDeclInvalid"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v2

    aput-object v14, v12, v13

    const/4 v12, 0x2

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1841
    const-string v8, "ISO-8859-1"

    move-object v2, v8

    .line 1845
    :cond_a
    move-object v8, v4

    invoke-static {v8}, Lorg/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 1846
    .local v7, "javaEncoding":Ljava/lang/String;
    move-object v8, v7

    if-nez v8, :cond_b

    .line 1847
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fAllowJavaEncodings:Z

    if-eqz v8, :cond_c

    .line 1848
    move-object v8, v2

    move-object v7, v8

    .line 1865
    :cond_b
    :goto_1
    new-instance v8, Ljava/io/InputStreamReader;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v1

    move-object v11, v7

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v8

    goto/16 :goto_0

    .line 1850
    :cond_c
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v9, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v10, "EncodingDeclInvalid"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v2

    aput-object v14, v12, v13

    const/4 v12, 0x2

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1855
    const-string v8, "ISO8859_1"

    move-object v7, v8

    goto :goto_1
.end method

.method public getBaseSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChar(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move v1, p1

    .local v1, "relative":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->arrangeCapacity(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v2, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v4, v1

    add-int/2addr v3, v4

    aget-char v2, v2, v3

    move v0, v2

    .line 409
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_0
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0
.end method

.method public getCharacterOffset()I
    .locals 3

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v1, v1, Lcom/sun/xml/stream/Entity$ScannedEntity;->fTotalCountTillLastLoad:I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v2, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    add-int/2addr v1, v2

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getColumnNumber()I
    .locals 2

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v1, v1, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCurrentEntity()Lcom/sun/xml/stream/Entity$ScannedEntity;
    .locals 2

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/sun/xml/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    return-object v0
.end method

.method protected getEncodingName([BI)[Ljava/lang/Object;
    .locals 14

    .prologue
    .line 1881
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, p1

    .local v1, "b4":[B
    move/from16 v2, p2

    .local v2, "count":I
    move v7, v2

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    .line 1882
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "UTF-8"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v0, v7

    .line 1953
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :goto_0
    return-object v0

    .line 1886
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_0
    move-object v7, v1

    const/4 v8, 0x0

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    move v3, v7

    .line 1887
    .local v3, "b0":I
    move-object v7, v1

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    move v4, v7

    .line 1888
    .local v4, "b1":I
    move v7, v3

    const/16 v8, 0xfe

    if-ne v7, v8, :cond_1

    move v7, v4

    const/16 v8, 0xff

    if-ne v7, v8, :cond_1

    .line 1890
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

    .line 1892
    :cond_1
    move v7, v3

    const/16 v8, 0xff

    if-ne v7, v8, :cond_2

    move v7, v4

    const/16 v8, 0xfe

    if-ne v7, v8, :cond_2

    .line 1894
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

    .line 1899
    :cond_2
    move v7, v2

    const/4 v8, 0x3

    if-ge v7, v8, :cond_3

    .line 1900
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "UTF-8"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v0, v7

    goto :goto_0

    .line 1904
    :cond_3
    move-object v7, v1

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    move v5, v7

    .line 1905
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

    .line 1906
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "UTF-8"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v0, v7

    goto/16 :goto_0

    .line 1911
    :cond_4
    move v7, v2

    const/4 v8, 0x4

    if-ge v7, v8, :cond_5

    .line 1912
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "UTF-8"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v0, v7

    goto/16 :goto_0

    .line 1916
    :cond_5
    move-object v7, v1

    const/4 v8, 0x3

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    move v6, v7

    .line 1917
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

    .line 1919
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

    .line 1921
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

    .line 1923
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

    .line 1925
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

    .line 1928
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

    .line 1930
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

    .line 1933
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

    .line 1935
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

    .line 1939
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

    .line 1941
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

    .line 1944
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

    .line 1946
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

    .line 1949
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

    .line 1953
    :cond_c
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    const-string v10, "UTF-8"

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v0, v7

    goto/16 :goto_0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 2

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v1, v1, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v1, v1, Lcom/sun/xml/stream/Entity$ScannedEntity;->version:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    return-object v0
.end method

.method public isExternal()Z
    .locals 2

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    invoke-virtual {v1}, Lcom/sun/xml/stream/Entity$ScannedEntity;->isExternal()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    return v0
.end method

.method public isSpace(C)Z
    .locals 4

    .prologue
    .line 1434
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move v1, p1

    .local v1, "ch":C
    move v2, v1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    move v2, v1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    move v2, v1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    move v2, v1

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method final load(IZ)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1707
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move v1, p1

    .local v1, "offset":I
    move v2, p2

    .local v2, "changeEntity":Z
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->fTotalCountTillLastLoad:I

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->fLastCount:I

    add-int/2addr v7, v8

    iput v7, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->fTotalCountTillLastLoad:I

    .line 1710
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-boolean v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->mayReadChunks:Z

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    array-length v6, v6

    move v7, v1

    sub-int/2addr v6, v7

    :goto_0
    move v3, v6

    .line 1713
    .local v3, "length":I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->reader:Ljava/io/Reader;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v8, v1

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/Reader;->read([CII)I

    move-result v6

    move v4, v6

    .line 1717
    .local v4, "count":I
    const/4 v6, 0x0

    move v5, v6

    .line 1718
    .local v5, "entityChanged":Z
    move v6, v4

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 1719
    move v6, v4

    if-eqz v6, :cond_0

    .line 1721
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move v7, v4

    iput v7, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->fLastCount:I

    .line 1722
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move v7, v4

    move v8, v1

    add-int/2addr v7, v8

    iput v7, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    .line 1723
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move v7, v1

    iput v7, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1752
    :cond_0
    :goto_1
    move v6, v5

    move v0, v6

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :goto_2
    return v0

    .line 1710
    .end local v3    # "length":I
    .end local v4    # "count":I
    .end local v5    # "entityChanged":Z
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    const/16 v6, 0x40

    goto :goto_0

    .line 1728
    .restart local v3    # "length":I
    .restart local v4    # "count":I
    .restart local v5    # "entityChanged":Z
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move v7, v1

    iput v7, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    .line 1729
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move v7, v1

    iput v7, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1730
    const/4 v6, 0x1

    move v5, v6

    .line 1732
    move v6, v2

    if-eqz v6, :cond_0

    .line 1734
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    invoke-virtual {v6}, Lcom/sun/xml/stream/XMLEntityManager;->endEntity()V

    .line 1736
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-nez v6, :cond_3

    .line 1737
    const/4 v6, 0x1

    move v0, v6

    goto :goto_2

    .line 1740
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v6, v7, :cond_0

    .line 1741
    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v6

    goto :goto_1
.end method

.method public peekChar()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v2, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v2, v3, :cond_0

    .line 430
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 431
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v2

    .line 435
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v2, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v2, v2, v3

    move v1, v2

    .line 448
    .local v1, "c":I
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v2, :cond_2

    .line 449
    move v2, v1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    move v2, v1

    :goto_0
    move v0, v2

    .line 452
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :goto_1
    return v0

    .line 449
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_1
    const/16 v2, 0xa

    goto :goto_0

    .line 452
    :cond_2
    move v2, v1

    move v0, v2

    goto :goto_1
.end method

.method final print()V
    .locals 0

    .prologue
    .line 2016
    return-void
.end method

.method public registerListener(Lcom/sun/xml/stream/XMLBufferListener;)V
    .locals 4

    .prologue
    .line 2024
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/xml/stream/XMLBufferListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->listeners:Ljava/util/Vector;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2025
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->listeners:Ljava/util/Vector;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 2026
    :cond_0
    return-void
.end method

.method public reset(Lcom/sun/xml/stream/PropertyManager;)V
    .locals 5

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, p1

    .local v1, "propertyManager":Lcom/sun/xml/stream/PropertyManager;
    move-object v2, v0

    move-object v3, v1

    const-string v4, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/util/SymbolTable;

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 211
    move-object v2, v0

    move-object v3, v1

    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/xml/stream/XMLErrorReporter;

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    .line 212
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    .line 213
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    .line 214
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceInfoNeeded:Z

    .line 215
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scannedName:[C

    .line 216
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->listeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 217
    return-void
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, p1

    .local v1, "componentManager":Lorg/apache/xerces/xni/parser/XMLComponentManager;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    const-string v5, "http://apache.org/xml/features/allow-java-encodings"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fAllowJavaEncodings:Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .line 244
    :goto_0
    move-object v3, v0

    move-object v4, v1

    const-string v5, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/util/SymbolTable;

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 245
    move-object v3, v0

    move-object v4, v1

    const-string v5, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/xml/stream/XMLErrorReporter;

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    .line 247
    return-void

    .line 239
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 240
    .local v2, "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fAllowJavaEncodings:Z

    goto :goto_0
.end method

.method public scanChar()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v2, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v2, v3, :cond_0

    .line 474
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 475
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v2

    .line 479
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v2, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v2, v2, v3

    move v1, v2

    .line 480
    .local v1, "c":I
    move v2, v1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    move v2, v1

    const/16 v3, 0xd

    if-ne v2, v3, :cond_4

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v2, :cond_4

    .line 482
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 483
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    const/4 v3, 0x1

    iput v3, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 484
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v2, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v2, v3, :cond_2

    .line 485
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 486
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v2, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    const/4 v3, 0x0

    move v4, v1

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 487
    move-object v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v2

    .line 489
    :cond_2
    move v2, v1

    const/16 v3, 0xd

    if-ne v2, v3, :cond_4

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v2, :cond_4

    .line 490
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v2, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v2, v2, v3

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    .line 491
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 493
    :cond_3
    const/16 v2, 0xa

    move v1, v2

    .line 503
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 504
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    return v0
.end method

.method public scanContent(Lorg/apache/xerces/xni/XMLString;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 861
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, p1

    .local v1, "content":Lorg/apache/xerces/xni/XMLString;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v7, v8, :cond_2

    .line 862
    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 863
    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v7

    .line 873
    :cond_0
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v2, v7

    .line 874
    .local v2, "offset":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v8, v2

    aget-char v7, v7, v8

    move v3, v7

    .line 875
    .local v3, "c":I
    const/4 v7, 0x0

    move v4, v7

    .line 876
    .local v4, "newlines":I
    move v7, v3

    const/16 v8, 0xa

    if-eq v7, v8, :cond_1

    move v7, v3

    const/16 v8, 0xd

    if-ne v7, v8, :cond_9

    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v7, :cond_9

    .line 883
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v7, v7, v8

    move v3, v7

    .line 884
    move v7, v3

    const/16 v8, 0xd

    if-ne v7, v8, :cond_6

    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v7, :cond_6

    .line 885
    add-int/lit8 v4, v4, 0x1

    .line 886
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 887
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    const/4 v8, 0x1

    iput v8, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 888
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v7, v8, :cond_3

    .line 889
    const/4 v7, 0x0

    move v2, v7

    .line 890
    move-object v7, v0

    move v8, v4

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 891
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move v8, v4

    iput v8, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 892
    move-object v7, v0

    move v8, v4

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 893
    .line 923
    :goto_1
    move v7, v2

    move v5, v7

    .local v5, "i":I
    :goto_2
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    if-ge v7, v8, :cond_8

    .line 924
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v8, v5

    const/16 v9, 0xa

    aput-char v9, v7, v8

    .line 923
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 865
    .end local v2    # "offset":I
    .end local v3    # "c":I
    .end local v4    # "newlines":I
    .end local v5    # "i":I
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_0

    .line 866
    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 867
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aget-char v9, v9, v10

    aput-char v9, v7, v8

    .line 868
    move-object v7, v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v7

    .line 869
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    const/4 v8, 0x0

    iput v8, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    goto/16 :goto_0

    .line 896
    .restart local v2    # "offset":I
    .restart local v3    # "c":I
    .restart local v4    # "newlines":I
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v7, v7, v8

    const/16 v8, 0xa

    if-ne v7, v8, :cond_5

    .line 897
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 898
    add-int/lit8 v2, v2, 0x1

    .line 922
    :cond_4
    :goto_3
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_1

    goto :goto_1

    .line 902
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 905
    :cond_6
    move v7, v3

    const/16 v8, 0xa

    if-ne v7, v8, :cond_7

    .line 906
    add-int/lit8 v4, v4, 0x1

    .line 907
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 908
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    const/4 v8, 0x1

    iput v8, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 909
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v7, v8, :cond_4

    .line 910
    const/4 v7, 0x0

    move v2, v7

    .line 911
    move-object v7, v0

    move v8, v4

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 912
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move v8, v4

    iput v8, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 913
    move-object v7, v0

    move v8, v4

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 914
    goto/16 :goto_1

    .line 919
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 920
    goto/16 :goto_1

    .line 926
    .restart local v5    # "i":I
    :cond_8
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v8, v2

    sub-int/2addr v7, v8

    move v5, v7

    .line 927
    .local v5, "length":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_9

    .line 930
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v9, v2

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 937
    const/4 v7, -0x1

    move v0, v7

    .line 981
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    .end local v5    # "length":I
    :goto_4
    return v0

    .line 947
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_9
    const/4 v7, 0x0

    move v5, v7

    .line 948
    .local v5, "vc":Z
    :cond_a
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ge v7, v8, :cond_b

    .line 949
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v7, v7, v8

    move v3, v7

    .line 950
    move v7, v3

    const/16 v8, 0x7f

    if-ge v7, v8, :cond_d

    .line 951
    sget-object v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->validContent:[Z

    move v8, v3

    aget-boolean v7, v7, v8

    move v5, v7

    .line 954
    :goto_5
    move v7, v5

    if-nez v7, :cond_a

    .line 955
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 956
    .line 959
    :cond_b
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v8, v2

    sub-int/2addr v7, v8

    move v6, v7

    .line 960
    .local v6, "length":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    move v9, v6

    move v10, v4

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 962
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v9, v2

    move v10, v6

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 965
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-eq v7, v8, :cond_e

    .line 966
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v7, v7, v8

    move v3, v7

    .line 969
    move v7, v3

    const/16 v8, 0xd

    if-ne v7, v8, :cond_c

    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v7, :cond_c

    .line 970
    const/16 v7, 0xa

    move v3, v7

    .line 981
    :cond_c
    :goto_6
    move v7, v3

    move v0, v7

    goto/16 :goto_4

    .line 953
    .end local v6    # "length":I
    :cond_d
    move v7, v3

    invoke-static {v7}, Lorg/apache/xerces/util/XMLChar;->isContent(I)Z

    move-result v7

    move v5, v7

    goto :goto_5

    .line 974
    .restart local v6    # "length":I
    :cond_e
    const/4 v7, -0x1

    move v3, v7

    goto :goto_6
.end method

.method public scanData(Ljava/lang/String;Lorg/apache/xerces/util/XMLStringBuffer;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1200
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object/from16 v2, p1

    .local v2, "delimiter":Ljava/lang/String;
    move-object/from16 v3, p2

    .local v3, "buffer":Lorg/apache/xerces/util/XMLStringBuffer;
    const/4 v12, 0x0

    move v4, v12

    .line 1201
    .local v4, "done":Z
    move-object v12, v2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move v5, v12

    .line 1202
    .local v5, "delimLen":I
    move-object v12, v2

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v6, v12

    .line 1212
    .local v6, "charAt0":C
    :cond_0
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v12, v13, :cond_2

    .line 1213
    move-object v12, v1

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1214
    move-object v12, v1

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v12

    .line 1223
    :cond_1
    :goto_0
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    move v14, v5

    sub-int/2addr v13, v14

    if-lt v12, v13, :cond_3

    .line 1225
    move-object v12, v1

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1226
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v12, v13

    move v7, v12

    .line 1227
    .local v7, "length":I
    move-object v12, v3

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v14, v14, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v15, v7

    invoke-virtual {v12, v13, v14, v15}, Lorg/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1228
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v14, v14, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    add-int/2addr v13, v14

    iput v13, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1229
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    iput v13, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1230
    move-object v12, v1

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v12

    .line 1231
    const/4 v12, 0x0

    move v1, v12

    .line 1354
    .end local v1    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    .end local v7    # "length":I
    :goto_1
    return v1

    .line 1216
    .restart local v1    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_2
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    move v14, v5

    sub-int/2addr v13, v14

    if-lt v12, v13, :cond_1

    .line 1217
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v14, v14, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v13, v14

    invoke-direct {v12, v13}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1218
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v14, v14, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    const/4 v15, 0x0

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-static/range {v12 .. v16}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1220
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v14, v14, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    sub-int/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v12

    .line 1221
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    const/4 v13, 0x0

    iput v13, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    goto/16 :goto_0

    .line 1235
    :cond_3
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v7, v12

    .line 1236
    .local v7, "offset":I
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v13, v7

    aget-char v12, v12, v13

    move v8, v12

    .line 1237
    .local v8, "c":I
    const/4 v12, 0x0

    move v9, v12

    .line 1238
    .local v9, "newlines":I
    move v12, v8

    const/16 v13, 0xa

    if-eq v12, v13, :cond_4

    move v12, v8

    const/16 v13, 0xd

    if-ne v12, v13, :cond_b

    move-object v12, v1

    iget-boolean v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v12, :cond_b

    .line 1245
    :cond_4
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    iget v14, v14, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object/from16 v18, v13

    move/from16 v19, v14

    move/from16 v13, v19

    move-object/from16 v14, v18

    move/from16 v15, v19

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    iput v15, v14, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v12, v12, v13

    move v8, v12

    .line 1246
    move v12, v8

    const/16 v13, 0xd

    if-ne v12, v13, :cond_8

    move-object v12, v1

    iget-boolean v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v12, :cond_8

    .line 1247
    add-int/lit8 v9, v9, 0x1

    .line 1248
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 1249
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    const/4 v13, 0x1

    iput v13, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1250
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v12, v13, :cond_5

    .line 1251
    const/4 v12, 0x0

    move v7, v12

    .line 1252
    move-object v12, v1

    move v13, v9

    invoke-direct {v12, v13}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1253
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move v13, v9

    iput v13, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1254
    move-object v12, v1

    move v13, v9

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1255
    .line 1286
    :goto_2
    move v12, v7

    move v10, v12

    .local v10, "i":I
    :goto_3
    move v12, v10

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    if-ge v12, v13, :cond_a

    .line 1287
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v13, v10

    const/16 v14, 0xa

    aput-char v14, v12, v13

    .line 1286
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1258
    .end local v10    # "i":I
    :cond_5
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v12, v12, v13

    const/16 v13, 0xa

    if-ne v12, v13, :cond_7

    .line 1259
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1260
    add-int/lit8 v7, v7, 0x1

    .line 1285
    :cond_6
    :goto_4
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    if-lt v12, v13, :cond_4

    goto :goto_2

    .line 1264
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1267
    :cond_8
    move v12, v8

    const/16 v13, 0xa

    if-ne v12, v13, :cond_9

    .line 1268
    add-int/lit8 v9, v9, 0x1

    .line 1269
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 1270
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    const/4 v13, 0x1

    iput v13, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1271
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v12, v13, :cond_6

    .line 1272
    const/4 v12, 0x0

    move v7, v12

    .line 1273
    move-object v12, v1

    move v13, v9

    invoke-direct {v12, v13}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1274
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move v13, v9

    iput v13, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1275
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move v13, v9

    iput v13, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    .line 1276
    move-object v12, v1

    move v13, v9

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1277
    goto/16 :goto_2

    .line 1282
    :cond_9
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    iput v13, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1283
    goto/16 :goto_2

    .line 1289
    .restart local v10    # "i":I
    :cond_a
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v13, v7

    sub-int/2addr v12, v13

    move v10, v12

    .line 1290
    .local v10, "length":I
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_b

    .line 1291
    move-object v12, v3

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v14, v7

    move v15, v10

    invoke-virtual {v12, v13, v14, v15}, Lorg/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1297
    const/4 v12, 0x1

    move v1, v12

    goto/16 :goto_1

    .line 1327
    .line 1307
    .end local v10    # "length":I
    :cond_b
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ge v12, v13, :cond_c

    .line 1308
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    iget v14, v14, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object/from16 v18, v13

    move/from16 v19, v14

    move/from16 v13, v19

    move-object/from16 v14, v18

    move/from16 v15, v19

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    iput v15, v14, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v12, v12, v13

    move v8, v12

    .line 1309
    move v12, v8

    move v13, v6

    if-ne v12, v13, :cond_11

    .line 1311
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v10, v12

    .line 1312
    .local v10, "delimOffset":I
    const/4 v12, 0x1

    move v11, v12

    .local v11, "i":I
    :goto_5
    move v12, v11

    move v13, v5

    if-ge v12, v13, :cond_f

    .line 1313
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v12, v13, :cond_e

    .line 1314
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v14, v11

    sub-int/2addr v13, v14

    iput v13, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1315
    .line 1340
    .end local v10    # "delimOffset":I
    .end local v11    # "i":I
    :cond_c
    :goto_6
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v13, v7

    sub-int/2addr v12, v13

    move v10, v12

    .line 1341
    .local v10, "length":I
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    move v14, v10

    move v15, v9

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    iput v13, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1342
    move v12, v4

    if-eqz v12, :cond_d

    .line 1343
    move v12, v10

    move v13, v5

    sub-int/2addr v12, v13

    move v10, v12

    .line 1345
    :cond_d
    move-object v12, v3

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v14, v7

    move v15, v10

    invoke-virtual {v12, v13, v14, v15}, Lorg/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1353
    move v12, v4

    if-eqz v12, :cond_0

    .line 1354
    move v12, v4

    if-nez v12, :cond_14

    const/4 v12, 0x1

    :goto_7
    move v1, v12

    goto/16 :goto_1

    .line 1317
    .local v10, "delimOffset":I
    .restart local v11    # "i":I
    :cond_e
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    iget v14, v14, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object/from16 v18, v13

    move/from16 v19, v14

    move/from16 v13, v19

    move-object/from16 v14, v18

    move/from16 v15, v19

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    iput v15, v14, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v12, v12, v13

    move v8, v12

    .line 1318
    move-object v12, v2

    move v13, v11

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v13, v8

    if-eq v12, v13, :cond_10

    .line 1319
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v14, v11

    sub-int/2addr v13, v14

    iput v13, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1320
    .line 1323
    :cond_f
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v13, v10

    move v14, v5

    add-int/2addr v13, v14

    if-ne v12, v13, :cond_b

    .line 1324
    const/4 v12, 0x1

    move v4, v12

    .line 1325
    goto :goto_6

    .line 1312
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 1328
    .end local v10    # "delimOffset":I
    .end local v11    # "i":I
    :cond_11
    move v12, v8

    const/16 v13, 0xa

    if-eq v12, v13, :cond_12

    move-object v12, v1

    iget-boolean v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v12, :cond_13

    move v12, v8

    const/16 v13, 0xd

    if-ne v12, v13, :cond_13

    .line 1329
    :cond_12
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    iput v13, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1330
    goto/16 :goto_6

    .line 1332
    :cond_13
    move v12, v8

    invoke-static {v12}, Lorg/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1333
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    iput v13, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1334
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v13, v7

    sub-int/2addr v12, v13

    move v10, v12

    .line 1335
    .local v10, "length":I
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    iget v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    move v14, v10

    move v15, v9

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    iput v13, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1336
    move-object v12, v3

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v14, v7

    move v15, v10

    invoke-virtual {v12, v13, v14, v15}, Lorg/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1337
    const/4 v12, 0x1

    move v1, v12

    goto/16 :goto_1

    .line 1354
    :cond_14
    const/4 v12, 0x0

    goto/16 :goto_7
.end method

.method public scanLiteral(ILorg/apache/xerces/xni/XMLString;)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1021
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move/from16 v1, p1

    .local v1, "quote":I
    move-object/from16 v2, p2

    .local v2, "content":Lorg/apache/xerces/xni/XMLString;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v8, v9, :cond_3

    .line 1022
    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1023
    move-object v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v8

    .line 1034
    :cond_0
    :goto_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v3, v8

    .line 1035
    .local v3, "offset":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v9, v3

    aget-char v8, v8, v9

    move v4, v8

    .line 1036
    .local v4, "c":I
    const/4 v8, 0x0

    move v5, v8

    .line 1037
    .local v5, "newlines":I
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceInfoNeeded:Z

    if-eqz v8, :cond_1

    .line 1038
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    .line 1039
    :cond_1
    move v8, v4

    const/16 v9, 0xa

    if-eq v8, v9, :cond_2

    move v8, v4

    const/16 v9, 0xd

    if-ne v8, v9, :cond_a

    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v8, :cond_a

    .line 1046
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v8, v8, v9

    move v4, v8

    .line 1047
    move v8, v4

    const/16 v9, 0xd

    if-ne v8, v9, :cond_7

    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v8, :cond_7

    .line 1048
    add-int/lit8 v5, v5, 0x1

    .line 1049
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 1050
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    const/4 v9, 0x1

    iput v9, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1051
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v8, v9, :cond_4

    .line 1052
    move-object v8, v0

    move v9, v5

    invoke-direct {v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1053
    const/4 v8, 0x0

    move v3, v8

    .line 1054
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move v9, v5

    iput v9, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1055
    move-object v8, v0

    move v9, v5

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1056
    .line 1094
    :goto_1
    const/4 v8, 0x0

    move v6, v8

    .line 1095
    .local v6, "i":I
    move v8, v3

    move v6, v8

    :goto_2
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    if-ge v8, v9, :cond_9

    .line 1096
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v9, v6

    const/16 v10, 0xa

    aput-char v10, v8, v9

    .line 1097
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    move v10, v6

    aput v10, v8, v9

    .line 1095
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1025
    .end local v3    # "offset":I
    .end local v4    # "c":I
    .end local v5    # "newlines":I
    .end local v6    # "i":I
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_0

    .line 1026
    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1027
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v10, v10, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget-char v10, v10, v11

    aput-char v10, v8, v9

    .line 1029
    move-object v8, v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v8

    .line 1030
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    const/4 v9, 0x0

    iput v9, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    goto/16 :goto_0

    .line 1059
    .restart local v3    # "offset":I
    .restart local v4    # "c":I
    .restart local v5    # "newlines":I
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v8, v8, v9

    const/16 v9, 0xa

    if-ne v8, v9, :cond_6

    .line 1060
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1061
    add-int/lit8 v3, v3, 0x1

    .line 1093
    :cond_5
    :goto_3
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-lt v8, v9, :cond_2

    goto/16 :goto_1

    .line 1065
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1069
    :cond_7
    move v8, v4

    const/16 v9, 0xa

    if-ne v8, v9, :cond_8

    .line 1070
    add-int/lit8 v5, v5, 0x1

    .line 1071
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 1072
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    const/4 v9, 0x1

    iput v9, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1073
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v8, v9, :cond_5

    .line 1074
    const/4 v8, 0x0

    move v3, v8

    .line 1075
    move-object v8, v0

    move v9, v5

    invoke-direct {v8, v9}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1076
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move v9, v5

    iput v9, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1077
    move-object v8, v0

    move v9, v5

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1078
    goto/16 :goto_1

    .line 1090
    :cond_8
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1091
    goto/16 :goto_1

    .line 1100
    .restart local v6    # "i":I
    :cond_9
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v9, v3

    sub-int/2addr v8, v9

    move v7, v8

    .line 1101
    .local v7, "length":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_a

    .line 1102
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v10, v3

    move v11, v7

    invoke-virtual {v8, v9, v10, v11}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 1108
    const/4 v8, -0x1

    move v0, v8

    .line 1169
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    .end local v6    # "i":I
    :goto_4
    return v0

    .line 1118
    .end local v7    # "length":I
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_a
    const/4 v8, 0x1

    move v6, v8

    .line 1119
    .local v6, "vc":Z
    :cond_b
    :goto_5
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ge v8, v9, :cond_e

    .line 1120
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v8, v8, v9

    move v4, v8

    .line 1121
    move v8, v4

    move v9, v1

    if-ne v8, v9, :cond_c

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-boolean v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->literal:Z

    if-eqz v8, :cond_d

    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-nez v8, :cond_d

    :cond_c
    move v8, v4

    const/16 v9, 0x25

    if-ne v8, v9, :cond_10

    .line 1122
    :cond_d
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1123
    .line 1147
    :cond_e
    :goto_6
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v9, v3

    sub-int/2addr v8, v9

    move v7, v8

    .line 1148
    .restart local v7    # "length":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    move v10, v7

    move v11, v5

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    iput v9, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1149
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v10, v3

    move v11, v7

    invoke-virtual {v8, v9, v10, v11}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 1152
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-eq v8, v9, :cond_15

    .line 1153
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v8, v8, v9

    move v4, v8

    .line 1157
    move v8, v4

    move v9, v1

    if-ne v8, v9, :cond_f

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-boolean v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->literal:Z

    if-eqz v8, :cond_f

    .line 1158
    const/4 v8, -0x1

    move v4, v8

    .line 1169
    :cond_f
    :goto_7
    move v8, v4

    move v0, v8

    goto/16 :goto_4

    .line 1125
    .end local v7    # "length":I
    :cond_10
    move v8, v4

    const/16 v9, 0x7f

    if-ge v8, v9, :cond_11

    .line 1126
    sget-object v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->validContent:[Z

    move v9, v4

    aget-boolean v8, v8, v9

    move v6, v8

    .line 1129
    :goto_8
    move v8, v6

    if-nez v8, :cond_12

    .line 1130
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1131
    goto :goto_6

    .line 1128
    :cond_11
    move v8, v4

    invoke-static {v8}, Lorg/apache/xerces/util/XMLChar;->isContent(I)Z

    move-result v8

    move v6, v8

    goto :goto_8

    .line 1134
    :cond_12
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceInfoNeeded:Z

    if-eqz v8, :cond_b

    .line 1135
    move v8, v4

    const/16 v9, 0x20

    if-eq v8, v9, :cond_13

    move v8, v4

    const/16 v9, 0x9

    if-ne v8, v9, :cond_b

    .line 1136
    :cond_13
    move-object v8, v0

    iget v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    array-length v9, v9

    if-ge v8, v9, :cond_14

    .line 1137
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aput v10, v8, v9

    goto/16 :goto_5

    .line 1139
    :cond_14
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    array-length v8, v8

    const/16 v9, 0x14

    add-int/lit8 v8, v8, 0x14

    new-array v8, v8, [I

    move-object v7, v8

    .line 1140
    .local v7, "tmp":[I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    const/4 v9, 0x0

    move-object v10, v7

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    array-length v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1141
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    .line 1142
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/sun/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v10, v10, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aput v10, v8, v9

    .line 1143
    goto/16 :goto_5

    .line 1162
    .local v7, "length":I
    :cond_15
    const/4 v8, -0x1

    move v4, v8

    goto/16 :goto_7
.end method

.method public scanName()Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 612
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v6, v7, :cond_0

    .line 613
    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 614
    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v6

    .line 618
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v1, v6

    .line 619
    .local v1, "offset":I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v7, v1

    aget-char v6, v6, v7

    invoke-static {v6}, Lorg/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 620
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v11, v6

    move v12, v7

    move v6, v12

    move-object v7, v11

    move v8, v12

    iput v8, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v6, v7, :cond_1

    .line 621
    move-object v6, v0

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 622
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v9, v1

    aget-char v8, v8, v9

    aput-char v8, v6, v7

    .line 623
    const/4 v6, 0x0

    move v1, v6

    .line 624
    move-object v6, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 625
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 626
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 627
    .local v2, "symbol":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v7}, Lorg/apache/xerces/util/SymbolTable;->getCharArray()[C

    move-result-object v7

    iput-object v7, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scannedName:[C

    .line 633
    move-object v6, v2

    move-object v0, v6

    .line 682
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    .end local v2    # "symbol":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 636
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_1
    const/4 v6, 0x0

    move v2, v6

    .line 639
    .local v2, "vc":Z
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v6, v6, v7

    move v3, v6

    .line 640
    .local v3, "c":C
    move v6, v3

    const/16 v7, 0x7f

    if-ge v6, v7, :cond_4

    .line 641
    sget-object v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    move v7, v3

    aget-boolean v6, v6, v7

    move v2, v6

    .line 645
    :goto_2
    move v6, v2

    if-nez v6, :cond_5

    .line 668
    .end local v2    # "vc":Z
    .end local v3    # "c":C
    :cond_2
    :goto_3
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v7, v1

    sub-int/2addr v6, v7

    move v2, v6

    .line 669
    .local v2, "length":I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    move v8, v2

    add-int/2addr v7, v8

    iput v7, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 672
    const/4 v6, 0x0

    move-object v3, v6

    .line 673
    .local v3, "symbol":Ljava/lang/String;
    move v6, v2

    if-lez v6, :cond_3

    .line 674
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v8, v1

    move v9, v2

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 675
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v7}, Lorg/apache/xerces/util/SymbolTable;->getCharArray()[C

    move-result-object v7

    iput-object v7, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->scannedName:[C

    .line 682
    :cond_3
    move-object v6, v3

    move-object v0, v6

    goto :goto_0

    .line 643
    .local v2, "vc":Z
    .local v3, "c":C
    :cond_4
    move v6, v3

    invoke-static {v6}, Lorg/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v6

    move v2, v6

    goto :goto_2

    .line 646
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v11, v6

    move v12, v7

    move v6, v12

    move-object v7, v11

    move v8, v12

    iput v8, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v6, v7, :cond_7

    .line 647
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v7, v1

    sub-int/2addr v6, v7

    move v4, v6

    .line 648
    .local v4, "length":I
    move-object v6, v0

    move v7, v4

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 649
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    if-ne v6, v7, :cond_6

    .line 651
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [C

    move-object v5, v6

    .line 652
    .local v5, "tmp":[C
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v7, v1

    move-object v8, v5

    const/4 v9, 0x0

    move v10, v4

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 654
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v7, v5

    iput-object v7, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    .line 655
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    .line 656
    .line 661
    .end local v5    # "tmp":[C
    :goto_4
    const/4 v6, 0x0

    move v1, v6

    .line 662
    move-object v6, v0

    move v7, v4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 663
    goto/16 :goto_3

    .line 658
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    const/4 v9, 0x0

    move v10, v4

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 666
    .end local v4    # "length":I
    :cond_7
    goto/16 :goto_1
.end method

.method public scanNmtoken()Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v6, v7, :cond_0

    .line 532
    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 533
    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v6

    .line 537
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v1, v6

    .line 538
    .local v1, "offset":I
    const/4 v6, 0x0

    move v2, v6

    .line 542
    .local v2, "vc":Z
    :cond_1
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v6, v6, v7

    move v3, v6

    .line 543
    .local v3, "c":C
    move v6, v3

    const/16 v7, 0x7f

    if-ge v6, v7, :cond_3

    .line 544
    sget-object v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    move v7, v3

    aget-boolean v6, v6, v7

    move v2, v6

    .line 548
    :goto_1
    move v6, v2

    if-nez v6, :cond_4

    .line 571
    :goto_2
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v7, v1

    sub-int/2addr v6, v7

    move v4, v6

    .line 572
    .local v4, "length":I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    move v8, v4

    add-int/2addr v7, v8

    iput v7, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 575
    const/4 v6, 0x0

    move-object v5, v6

    .line 576
    .local v5, "symbol":Ljava/lang/String;
    move v6, v4

    if-lez v6, :cond_2

    .line 577
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v8, v1

    move v9, v4

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 584
    :cond_2
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    return-object v0

    .line 546
    .end local v4    # "length":I
    .end local v5    # "symbol":Ljava/lang/String;
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_3
    move v6, v3

    invoke-static {v6}, Lorg/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v6

    move v2, v6

    goto :goto_1

    .line 550
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v11, v6

    move v12, v7

    move v6, v12

    move-object v7, v11

    move v8, v12

    iput v8, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v6, v7, :cond_1

    .line 551
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v7, v1

    sub-int/2addr v6, v7

    move v4, v6

    .line 552
    .restart local v4    # "length":I
    move-object v6, v0

    move v7, v4

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 553
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    if-ne v6, v7, :cond_5

    .line 555
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [C

    move-object v5, v6

    .line 556
    .local v5, "tmp":[C
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v7, v1

    move-object v8, v5

    const/4 v9, 0x0

    move v10, v4

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v7, v5

    iput-object v7, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    .line 559
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    .line 560
    .line 565
    .end local v5    # "tmp":[C
    :goto_3
    const/4 v6, 0x0

    move v1, v6

    .line 566
    move-object v6, v0

    move v7, v4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 567
    goto/16 :goto_2

    .line 562
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v8, v8, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    const/4 v9, 0x0

    move v10, v4

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 569
    :cond_6
    goto/16 :goto_0
.end method

.method public scanQName(Lorg/apache/xerces/xni/QName;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 716
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object/from16 v1, p1

    .local v1, "qname":Lorg/apache/xerces/xni/QName;
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v11, v12, :cond_0

    .line 717
    move-object v11, v0

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 718
    move-object v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v11

    .line 722
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v2, v11

    .line 728
    .local v2, "offset":I
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v11, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v12, v2

    aget-char v11, v11, v12

    invoke-static {v11}, Lorg/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 729
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    iput v13, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v11, v12, :cond_1

    .line 730
    move-object v11, v0

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 731
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v11, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v14, v2

    aget-char v13, v13, v14

    aput-char v13, v11, v12

    .line 732
    const/4 v11, 0x0

    move v2, v11

    .line 734
    move-object v11, v0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 735
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 738
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 739
    .local v3, "name":Ljava/lang/String;
    move-object v11, v1

    const/4 v12, 0x0

    move-object v13, v3

    move-object v14, v3

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v12}, Lorg/apache/xerces/util/SymbolTable;->getCharArray()[C

    move-result-object v12

    iput-object v12, v11, Lorg/apache/xerces/xni/QName;->characters:[C

    .line 746
    const/4 v11, 0x1

    move v0, v11

    .line 827
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    .end local v3    # "name":Ljava/lang/String;
    :goto_0
    return v0

    .line 749
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_1
    const/4 v11, -0x1

    move v3, v11

    .line 750
    .local v3, "index":I
    const/4 v11, 0x0

    move v4, v11

    .line 754
    .local v4, "vc":Z
    :goto_1
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v11, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v11, v11, v12

    move v5, v11

    .line 755
    .local v5, "c":C
    move v11, v5

    const/16 v12, 0x7f

    if-ge v11, v12, :cond_2

    .line 756
    sget-object v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->validNames:[Z

    move v12, v5

    aget-boolean v11, v11, v12

    move v4, v11

    .line 760
    :goto_2
    move v11, v4

    if-nez v11, :cond_3

    .line 791
    :goto_3
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v12, v2

    sub-int/2addr v11, v12

    move v5, v11

    .line 792
    .local v5, "length":I
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    move v13, v5

    add-int/2addr v12, v13

    iput v12, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 793
    move v11, v5

    if-lez v11, :cond_a

    .line 794
    const/4 v11, 0x0

    move-object v6, v11

    .line 795
    .local v6, "prefix":Ljava/lang/String;
    const/4 v11, 0x0

    move-object v7, v11

    .line 796
    .local v7, "localpart":Ljava/lang/String;
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v13, v2

    move v14, v5

    invoke-virtual {v11, v12, v13, v14}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 798
    .local v8, "rawname":Ljava/lang/String;
    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v12}, Lorg/apache/xerces/util/SymbolTable;->getCharArray()[C

    move-result-object v12

    iput-object v12, v11, Lorg/apache/xerces/xni/QName;->characters:[C

    .line 799
    move v11, v3

    const/4 v12, -0x1

    if-eq v11, v12, :cond_9

    .line 800
    move v11, v3

    move v12, v2

    sub-int/2addr v11, v12

    move v9, v11

    .line 801
    .local v9, "prefixLength":I
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v13, v2

    move v14, v9

    invoke-virtual {v11, v12, v13, v14}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 803
    move v11, v5

    move v12, v9

    sub-int/2addr v11, v12

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v10, v11

    .line 804
    .local v10, "len":I
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v13, v3

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v14, v10

    invoke-virtual {v11, v12, v13, v14}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 811
    .end local v9    # "prefixLength":I
    .end local v10    # "len":I
    :goto_4
    move-object v11, v1

    move-object v12, v6

    move-object v13, v7

    move-object v14, v8

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const/4 v11, 0x1

    move v0, v11

    goto/16 :goto_0

    .line 758
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v7    # "localpart":Ljava/lang/String;
    .end local v8    # "rawname":Ljava/lang/String;
    .local v5, "c":C
    :cond_2
    move v11, v5

    invoke-static {v11}, Lorg/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v11

    move v4, v11

    goto :goto_2

    .line 761
    :cond_3
    move v11, v5

    const/16 v12, 0x3a

    if-ne v11, v12, :cond_5

    .line 762
    move v11, v3

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    .line 763
    goto/16 :goto_3

    .line 765
    :cond_4
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v3, v11

    .line 767
    :cond_5
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    iput v13, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v11, v12, :cond_8

    .line 768
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v12, v2

    sub-int/2addr v11, v12

    move v6, v11

    .line 769
    .local v6, "length":I
    move-object v11, v0

    move v12, v6

    invoke-direct {v11, v12}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 770
    move v11, v6

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    if-ne v11, v12, :cond_7

    .line 772
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v11, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    new-array v11, v11, [C

    move-object v7, v11

    .line 773
    .local v7, "tmp":[C
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v11, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v12, v2

    move-object v13, v7

    const/4 v14, 0x0

    move v15, v6

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 775
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v12, v7

    iput-object v12, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    .line 776
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget v12, v12, Lcom/sun/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    iput v12, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    .line 777
    .line 782
    .end local v7    # "tmp":[C
    :goto_5
    move v11, v3

    const/4 v12, -0x1

    if-eq v11, v12, :cond_6

    .line 783
    move v11, v3

    move v12, v2

    sub-int/2addr v11, v12

    move v3, v11

    .line 785
    :cond_6
    const/4 v11, 0x0

    move v2, v11

    .line 786
    move-object v11, v0

    move v12, v6

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 787
    goto/16 :goto_3

    .line 779
    :cond_7
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v11, v11, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v12, v2

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v13, v13, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    const/4 v14, 0x0

    move v15, v6

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 790
    .end local v6    # "length":I
    :cond_8
    goto/16 :goto_1

    .line 809
    .local v5, "length":I
    .local v6, "prefix":Ljava/lang/String;
    .local v7, "localpart":Ljava/lang/String;
    .restart local v8    # "rawname":Ljava/lang/String;
    :cond_9
    move-object v11, v8

    move-object v7, v11

    goto/16 :goto_4

    .line 827
    .end local v3    # "index":I
    .end local v4    # "vc":Z
    .end local v5    # "length":I
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v7    # "localpart":Ljava/lang/String;
    .end local v8    # "rawname":Ljava/lang/String;
    :cond_a
    const/4 v11, 0x0

    move v0, v11

    goto/16 :goto_0
.end method

.method public setCurrentEntity(Lcom/sun/xml/stream/Entity$ScannedEntity;)V
    .locals 4

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, p1

    .local v1, "scannedEntity":Lcom/sun/xml/stream/Entity$ScannedEntity;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    .line 257
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-eqz v2, :cond_0

    .line 258
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    invoke-virtual {v3}, Lcom/sun/xml/stream/Entity$ScannedEntity;->isExternal()Z

    move-result v3

    iput-boolean v3, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    .line 262
    :cond_0
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->stream:Ljava/io/InputStream;

    if-eqz v3, :cond_6

    .line 357
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    move-object v4, v1

    .line 358
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 363
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    const-string v4, "UTF-16"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 364
    move-object v3, v1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 365
    .local v2, "ENCODING":Ljava/lang/String;
    move-object v3, v2

    const-string v4, "UTF-16"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 398
    .end local v2    # "ENCODING":Ljava/lang/String;
    :goto_0
    return-void

    .line 366
    .restart local v2    # "ENCODING":Ljava/lang/String;
    :cond_1
    move-object v3, v2

    const-string v4, "ISO-10646-UCS-4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 367
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    const-string v4, "UTF-16BE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 368
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    new-instance v4, Lorg/apache/xerces/impl/io/UCSReader;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->stream:Ljava/io/InputStream;

    const/16 v7, 0x8

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    iput-object v4, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->reader:Ljava/io/Reader;

    .line 372
    :goto_1
    goto :goto_0

    .line 370
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    new-instance v4, Lorg/apache/xerces/impl/io/UCSReader;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->stream:Ljava/io/InputStream;

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    iput-object v4, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->reader:Ljava/io/Reader;

    goto :goto_1

    .line 374
    :cond_3
    move-object v3, v2

    const-string v4, "ISO-10646-UCS-2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 375
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    const-string v4, "UTF-16BE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 376
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    new-instance v4, Lorg/apache/xerces/impl/io/UCSReader;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->stream:Ljava/io/InputStream;

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    iput-object v4, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->reader:Ljava/io/Reader;

    .line 380
    :goto_2
    goto :goto_0

    .line 378
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    new-instance v4, Lorg/apache/xerces/impl/io/UCSReader;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->stream:Ljava/io/InputStream;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    iput-object v4, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->reader:Ljava/io/Reader;

    goto :goto_2

    .line 390
    .end local v2    # "ENCODING":Ljava/lang/String;
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v5, v5, Lcom/sun/xml/stream/Entity$ScannedEntity;->stream:Ljava/io/InputStream;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->reader:Ljava/io/Reader;

    .line 391
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    .line 398
    :cond_6
    goto/16 :goto_0
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, p1

    .local v1, "version":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->version:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public skipChar(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1379
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move v1, p1

    .local v1, "c":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v3, v4, :cond_0

    .line 1380
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1381
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v3

    .line 1385
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v3, v3, v4

    move v2, v3

    .line 1386
    .local v2, "cc":I
    move v3, v2

    move v4, v1

    if-ne v3, v4, :cond_2

    .line 1387
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1388
    move v3, v1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 1389
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 1390
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    const/4 v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1400
    :goto_0
    const/4 v3, 0x1

    move v0, v3

    .line 1429
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :goto_1
    return v0

    .line 1393
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    goto :goto_0

    .line 1402
    :cond_2
    move v3, v1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_5

    move v3, v2

    const/16 v4, 0xd

    if-ne v3, v4, :cond_5

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v3, :cond_5

    .line 1404
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v3, v4, :cond_3

    .line 1405
    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1406
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    const/4 v4, 0x0

    move v5, v2

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 1407
    move-object v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v3

    .line 1409
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1410
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v3, v3, v4

    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    .line 1411
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1413
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 1414
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    const/4 v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1420
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 1429
    :cond_5
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_1
.end method

.method public skipSpaces()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1457
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v3, v4, :cond_0

    .line 1458
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1459
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v3

    .line 1468
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-nez v3, :cond_1

    .line 1469
    const/4 v3, 0x0

    move v0, v3

    .line 1540
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    .local v1, "c":I
    :goto_0
    return v0

    .line 1473
    .end local v1    # "c":I
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v3, v3, v4

    move v1, v3

    .line 1474
    .restart local v1    # "c":I
    move v3, v1

    invoke-static {v3}, Lorg/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1476
    :cond_2
    const/4 v3, 0x0

    move v2, v3

    .line 1478
    .local v2, "entityChanged":Z
    move v3, v1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v3, :cond_8

    move v3, v1

    const/16 v4, 0xd

    if-ne v3, v4, :cond_8

    .line 1479
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 1480
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    const/4 v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1481
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_4

    .line 1482
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1483
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    const/4 v4, 0x0

    move v5, v1

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 1484
    move-object v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v3

    move v2, v3

    .line 1485
    move v3, v2

    if-nez v3, :cond_7

    .line 1488
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1493
    :cond_4
    move v3, v1

    const/16 v4, 0xd

    if-ne v3, v4, :cond_5

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->isExternal:Z

    if-eqz v3, :cond_5

    .line 1496
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v3, v3, v4

    const/16 v4, 0xa

    if-eq v3, v4, :cond_5

    .line 1497
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1505
    :cond_5
    :goto_1
    move v3, v2

    if-nez v3, :cond_6

    .line 1506
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1509
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->count:I

    if-ne v3, v4, :cond_9

    .line 1510
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->invokeListeners(I)V

    .line 1511
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->load(IZ)Z

    move-result v3

    .line 1520
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-nez v3, :cond_9

    .line 1521
    const/4 v3, 0x1

    move v0, v3

    goto/16 :goto_0

    .line 1489
    :cond_7
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-nez v3, :cond_4

    .line 1490
    const/4 v3, 0x1

    move v0, v3

    goto/16 :goto_0

    .line 1502
    :cond_8
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    goto :goto_1

    .line 1525
    :cond_9
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v3, v3, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v4, v4, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    aget-char v3, v3, v4

    move v7, v3

    move v3, v7

    move v4, v7

    move v1, v4

    invoke-static {v3}, Lorg/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1531
    const/4 v3, 0x1

    move v0, v3

    goto/16 :goto_0

    .line 1540
    .end local v2    # "entityChanged":Z
    :cond_a
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0
.end method

.method public skipString(Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1624
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v2, v6

    .line 1627
    .local v2, "length":I
    move-object v6, v0

    move v7, v2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->arrangeCapacity(IZ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1628
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v3, v6

    .line 1629
    .local v3, "beforeSkip":I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v7, v2

    add-int/2addr v6, v7

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .line 1636
    .local v4, "afterSkip":I
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v5, v6

    .line 1638
    .local v5, "i":I
    :cond_0
    move-object v6, v1

    move v7, v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v8, v4

    aget-char v7, v7, v8

    if-ne v6, v7, :cond_1

    .line 1639
    move v6, v4

    add-int/lit8 v4, v4, -0x1

    move v7, v3

    if-ne v6, v7, :cond_0

    .line 1640
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v8, v2

    add-int/2addr v7, v8

    iput v7, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1641
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    move v8, v2

    add-int/2addr v7, v8

    iput v7, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1642
    const/4 v6, 0x1

    move v0, v6

    .line 1647
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    .end local v3    # "beforeSkip":I
    .end local v4    # "afterSkip":I
    .end local v5    # "i":I
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method public skipString([C)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1652
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    move-object v1, p1

    .local v1, "s":[C
    move-object v6, v1

    array-length v6, v6

    move v2, v6

    .line 1655
    .local v2, "length":I
    move-object v6, v0

    move v7, v2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/XMLEntityReaderImpl;->arrangeCapacity(IZ)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1656
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v3, v6

    .line 1657
    .local v3, "beforeSkip":I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v7, v2

    add-int/2addr v6, v7

    move v4, v6

    .line 1663
    .local v4, "afterSkip":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 1664
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->ch:[C

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    aget-char v6, v6, v7

    move-object v7, v1

    move v8, v5

    aget-char v7, v7, v8

    if-eq v6, v7, :cond_0

    .line 1665
    const/4 v6, 0x0

    move v0, v6

    .line 1674
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    .end local v3    # "beforeSkip":I
    .end local v4    # "afterSkip":I
    .end local v5    # "i":I
    :goto_1
    return v0

    .line 1663
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityReaderImpl;
    .restart local v3    # "beforeSkip":I
    .restart local v4    # "afterSkip":I
    .restart local v5    # "i":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1668
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    move v8, v2

    add-int/2addr v7, v8

    iput v7, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->position:I

    .line 1669
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityReaderImpl;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    move v8, v2

    add-int/2addr v7, v8

    iput v7, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 1670
    const/4 v6, 0x1

    move v0, v6

    goto :goto_1

    .line 1674
    .end local v3    # "beforeSkip":I
    .end local v4    # "afterSkip":I
    .end local v5    # "i":I
    :cond_2
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method
