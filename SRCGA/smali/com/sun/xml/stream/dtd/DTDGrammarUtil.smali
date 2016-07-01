.class public Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
.super Ljava/lang/Object;
.source "DTDGrammarUtil.java"


# static fields
.field private static final DEBUG_ATTRIBUTES:Z = false

.field private static final DEBUG_ELEMENT_CHILDREN:Z = false

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"


# instance fields
.field private fBuffer:Ljava/lang/StringBuffer;

.field private fCurrentContentSpecType:I

.field private fCurrentElementIndex:I

.field protected fDTDGrammar:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

.field private fElementContentState:[Z

.field private fElementDepth:I

.field private fInCDATASection:Z

.field private fInElementContent:Z

.field private fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

.field protected fNamespaces:Z

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field private fTempAttDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

.field private fTempQName:Lorg/apache/xerces/xni/QName;


# direct methods
.method public constructor <init>(Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;Lorg/apache/xerces/util/SymbolTable;)V
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    move-object v1, p1

    .local v1, "grammar":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move-object v2, p2

    .local v2, "symbolTable":Lorg/apache/xerces/util/SymbolTable;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 110
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    .line 115
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 118
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    .line 121
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    .line 123
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fInCDATASection:Z

    .line 126
    move-object v3, v0

    const/16 v4, 0x8

    new-array v4, v4, [Z

    iput-object v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    .line 129
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    .line 132
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    .line 135
    move-object v3, v0

    new-instance v4, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;-><init>()V

    iput-object v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    .line 138
    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/xni/QName;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fTempQName:Lorg/apache/xerces/xni/QName;

    .line 141
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    .line 143
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    .line 151
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    .line 152
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 153
    return-void
.end method

.method public constructor <init>(Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/NamespaceContext;)V
    .locals 8

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    move-object v1, p1

    .local v1, "grammar":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move-object v2, p2

    .local v2, "symbolTable":Lorg/apache/xerces/util/SymbolTable;
    move-object v3, p3

    .local v3, "namespaceContext":Lorg/apache/xerces/xni/NamespaceContext;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 110
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    .line 115
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 118
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    .line 121
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    .line 123
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fInCDATASection:Z

    .line 126
    move-object v4, v0

    const/16 v5, 0x8

    new-array v5, v5, [Z

    iput-object v5, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    .line 129
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    .line 132
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    .line 135
    move-object v4, v0

    new-instance v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    .line 138
    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/xni/QName;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fTempQName:Lorg/apache/xerces/xni/QName;

    .line 141
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v5, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    .line 143
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    .line 157
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    .line 158
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 159
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    .line 160
    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 6

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    move-object v1, p1

    .local v1, "symbolTable":Lorg/apache/xerces/util/SymbolTable;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 110
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    .line 115
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 118
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    .line 121
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    .line 123
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fInCDATASection:Z

    .line 126
    move-object v2, v0

    const/16 v3, 0x8

    new-array v3, v3, [Z

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    .line 129
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    .line 132
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    .line 135
    move-object v2, v0

    new-instance v3, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    .line 138
    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/xni/QName;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fTempQName:Lorg/apache/xerces/xni/QName;

    .line 141
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    .line 143
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    .line 147
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 148
    return-void
.end method

.method private ensureStackCapacity(I)V
    .locals 8

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    move v1, p1

    .local v1, "newElementDepth":I
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 483
    move v3, v1

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Z

    move-object v2, v3

    .line 484
    .local v2, "newStack":[Z
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    .line 487
    .end local v2    # "newStack":[Z
    :cond_0
    return-void
.end method

.method private getAttributeTypeName(Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    move-object v1, p1

    .local v1, "attrDecl":Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-short v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    packed-switch v4, :pswitch_data_0

    .line 475
    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    :goto_0
    return-object v0

    .line 448
    .restart local v0    # "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    :pswitch_0
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-boolean v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    if-eqz v4, :cond_0

    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    :goto_1
    move-object v0, v4

    goto :goto_0

    :cond_0
    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    goto :goto_1

    .line 451
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v4

    .line 452
    .local v2, "buffer":Ljava/lang/StringBuffer;
    move-object v4, v2

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 453
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_2
    move v4, v3

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-object v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 454
    move v4, v3

    if-lez v4, :cond_1

    .line 455
    move-object v4, v2

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 457
    :cond_1
    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-object v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 453
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 459
    :cond_2
    move-object v4, v2

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 460
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 463
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    :pswitch_2
    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->fIDSymbol:Ljava/lang/String;

    move-object v0, v4

    goto :goto_0

    .line 466
    :pswitch_3
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-boolean v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    if-eqz v4, :cond_3

    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->fIDREFSSymbol:Ljava/lang/String;

    :goto_3
    move-object v0, v4

    goto :goto_0

    :cond_3
    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->fIDREFSymbol:Ljava/lang/String;

    goto :goto_3

    .line 469
    :pswitch_4
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-boolean v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    if-eqz v4, :cond_4

    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    :goto_4
    move-object v0, v4

    goto :goto_0

    :cond_4
    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->fNMTOKENSymbol:Ljava/lang/String;

    goto :goto_4

    .line 472
    :pswitch_5
    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    move-object v0, v4

    goto :goto_0

    .line 446
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private normalizeAttrValue(Lorg/apache/xerces/xni/XMLAttributes;I)Z
    .locals 16

    .prologue
    .line 390
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    move-object/from16 v1, p1

    .local v1, "attributes":Lorg/apache/xerces/xni/XMLAttributes;
    move/from16 v2, p2

    .local v2, "index":I
    const/4 v11, 0x1

    move v3, v11

    .line 391
    .local v3, "leadingSpace":Z
    const/4 v11, 0x0

    move v4, v11

    .line 392
    .local v4, "spaceStart":Z
    const/4 v11, 0x0

    move v5, v11

    .line 393
    .local v5, "readingNonSpace":Z
    const/4 v11, 0x0

    move v6, v11

    .line 394
    .local v6, "count":I
    const/4 v11, 0x0

    move v7, v11

    .line 395
    .local v7, "eaten":I
    move-object v11, v1

    move v12, v2

    invoke-interface {v11, v12}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 396
    .local v8, "attrValue":Ljava/lang/String;
    move-object v11, v8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    new-array v11, v11, [C

    move-object v9, v11

    .line 398
    .local v9, "attValue":[C
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 399
    move-object v11, v8

    const/4 v12, 0x0

    move-object v13, v8

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move-object v14, v9

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Ljava/lang/String;->getChars(II[CI)V

    .line 400
    const/4 v11, 0x0

    move v10, v11

    .local v10, "i":I
    :goto_0
    move v11, v10

    move-object v12, v9

    array-length v12, v12

    if-ge v11, v12, :cond_5

    .line 402
    move-object v11, v9

    move v12, v10

    aget-char v11, v11, v12

    const/16 v12, 0x20

    if-ne v11, v12, :cond_4

    .line 405
    move v11, v5

    if-eqz v11, :cond_0

    .line 406
    const/4 v11, 0x1

    move v4, v11

    .line 407
    const/4 v11, 0x0

    move v5, v11

    .line 410
    :cond_0
    move v11, v4

    if-eqz v11, :cond_2

    move v11, v3

    if-nez v11, :cond_2

    .line 411
    const/4 v11, 0x0

    move v4, v11

    .line 412
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    move-object v12, v9

    move v13, v10

    aget-char v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 413
    add-int/lit8 v6, v6, 0x1

    .line 400
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 416
    :cond_2
    move v11, v3

    if-nez v11, :cond_3

    move v11, v4

    if-nez v11, :cond_1

    .line 417
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 423
    :cond_4
    const/4 v11, 0x1

    move v5, v11

    .line 424
    const/4 v11, 0x0

    move v4, v11

    .line 425
    const/4 v11, 0x0

    move v3, v11

    .line 426
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    move-object v12, v9

    move v13, v10

    aget-char v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 427
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 432
    :cond_5
    move v11, v6

    if-lez v11, :cond_6

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    if-ne v11, v12, :cond_6

    .line 433
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 436
    :cond_6
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 437
    .local v10, "newValue":Ljava/lang/String;
    move-object v11, v1

    move v12, v2

    move-object v13, v10

    invoke-interface {v11, v12, v13}, Lorg/apache/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    .line 438
    move-object v11, v8

    move-object v12, v10

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const/4 v11, 0x1

    :goto_2
    move v0, v11

    .end local v0    # "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    :cond_7
    const/4 v11, 0x0

    goto :goto_2
.end method


# virtual methods
.method public addDTDDefaultAttrs(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 247
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    move-object/from16 v3, p1

    .local v3, "elementName":Lorg/apache/xerces/xni/QName;
    move-object/from16 v4, p2

    .local v4, "attributes":Lorg/apache/xerces/xni/XMLAttributes;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getElementDeclIndex(Lorg/apache/xerces/xni/QName;)I

    move-result v18

    move/from16 v5, v18

    .line 249
    .local v5, "elementIndex":I
    move/from16 v18, v5

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 250
    .line 378
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object/from16 v18, v0

    move/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v18

    move/from16 v6, v18

    .line 260
    .local v6, "attlistIndex":I
    :goto_1
    move/from16 v18, v6

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    .line 262
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object/from16 v18, v0

    move/from16 v19, v6

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getAttributeDecl(ILcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)Z

    move-result v18

    .line 278
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lorg/apache/xerces/xni/QName;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v7, v18

    .line 279
    .local v7, "attPrefix":Ljava/lang/String;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lorg/apache/xerces/xni/QName;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v8, v18

    .line 280
    .local v8, "attLocalpart":Ljava/lang/String;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lorg/apache/xerces/xni/QName;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v9, v18

    .line 281
    .local v9, "attRawName":Ljava/lang/String;
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->getAttributeTypeName(Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v10, v18

    .line 283
    .local v10, "attType":Ljava/lang/String;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-short v0, v0, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    move/from16 v18, v0

    move/from16 v11, v18

    .line 284
    .local v11, "attDefaultType":I
    const/16 v18, 0x0

    move-object/from16 v12, v18

    .line 286
    .local v12, "attValue":Ljava/lang/String;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 287
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v12, v18

    .line 289
    :cond_2
    const/16 v18, 0x0

    move/from16 v13, v18

    .line 290
    .local v13, "specified":Z
    move/from16 v18, v11

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/16 v18, 0x1

    :goto_2
    move/from16 v14, v18

    .line 291
    .local v14, "required":Z
    move-object/from16 v18, v10

    sget-object v19, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_9

    const/16 v18, 0x1

    :goto_3
    move/from16 v15, v18

    .line 293
    .local v15, "cdata":Z
    move/from16 v18, v15

    if-eqz v18, :cond_3

    move/from16 v18, v14

    if-nez v18, :cond_3

    move-object/from16 v18, v12

    if-eqz v18, :cond_5

    .line 296
    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v18, v9

    const-string v19, "xmlns"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 297
    const-string v18, ""

    move-object/from16 v16, v18

    .line 298
    .local v16, "prefix":Ljava/lang/String;
    move-object/from16 v18, v9

    const/16 v19, 0x3a

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    move/from16 v17, v18

    .line 299
    .local v17, "pos":I
    move/from16 v18, v17

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    .line 300
    move-object/from16 v18, v9

    const/16 v19, 0x0

    move/from16 v20, v17

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v18

    .line 304
    :goto_4
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v18, v0

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v18

    .line 305
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object/from16 v18, v0

    check-cast v18, Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v19, v16

    .line 307
    invoke-virtual/range {v18 .. v19}, Lorg/apache/xerces/util/NamespaceSupport;->containsPrefixInCurrentContext(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 308
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object/from16 v18, v0

    move-object/from16 v19, v16

    move-object/from16 v20, v12

    invoke-interface/range {v18 .. v20}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    .line 310
    :cond_4
    const/16 v18, 0x1

    move/from16 v13, v18

    .line 323
    .end local v16    # "prefix":Ljava/lang/String;
    .end local v17    # "pos":I
    :cond_5
    :goto_5
    move/from16 v18, v13

    if-nez v18, :cond_7

    .line 324
    move-object/from16 v18, v12

    if-eqz v18, :cond_7

    .line 325
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fNamespaces:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 326
    move-object/from16 v18, v9

    const/16 v19, 0x3a

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    move/from16 v16, v18

    .line 327
    .local v16, "index":I
    move/from16 v18, v16

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 328
    move-object/from16 v18, v9

    const/16 v19, 0x0

    move/from16 v20, v16

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v7, v18

    .line 329
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v18, v0

    move-object/from16 v19, v7

    invoke-virtual/range {v18 .. v19}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v7, v18

    .line 330
    move-object/from16 v18, v9

    move/from16 v19, v16

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v8, v18

    .line 331
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v18, v0

    move-object/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v8, v18

    .line 334
    .end local v16    # "index":I
    :cond_6
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fTempQName:Lorg/apache/xerces/xni/QName;

    move-object/from16 v18, v0

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lorg/apache/xerces/xni/QName;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    move-object/from16 v18, v4

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fTempQName:Lorg/apache/xerces/xni/QName;

    move-object/from16 v19, v0

    move-object/from16 v20, v10

    move-object/from16 v21, v12

    invoke-interface/range {v18 .. v21}, Lorg/apache/xerces/xni/XMLAttributes;->addAttribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move/from16 v16, v18

    .line 338
    :cond_7
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object/from16 v18, v0

    move/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v18

    move/from16 v6, v18

    .line 339
    goto/16 :goto_1

    .line 290
    .end local v14    # "required":Z
    .end local v15    # "cdata":Z
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 291
    .restart local v14    # "required":Z
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 302
    .restart local v15    # "cdata":Z
    .local v16, "prefix":Ljava/lang/String;
    .restart local v17    # "pos":I
    :cond_a
    move-object/from16 v18, v9

    move-object/from16 v16, v18

    goto/16 :goto_4

    .line 312
    .end local v16    # "prefix":Ljava/lang/String;
    .end local v17    # "pos":I
    :cond_b
    move-object/from16 v18, v4

    invoke-interface/range {v18 .. v18}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v18

    move/from16 v16, v18

    .line 313
    .local v16, "attrCount":I
    const/16 v18, 0x0

    move/from16 v17, v18

    .local v17, "i":I
    :goto_6
    move/from16 v18, v17

    move/from16 v19, v16

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 314
    move-object/from16 v18, v4

    move/from16 v19, v17

    invoke-interface/range {v18 .. v19}, Lorg/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v9

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 315
    const/16 v18, 0x1

    move/from16 v13, v18

    .line 316
    goto/16 :goto_5

    .line 313
    :cond_c
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 345
    .end local v7    # "attPrefix":Ljava/lang/String;
    .end local v8    # "attLocalpart":Ljava/lang/String;
    .end local v9    # "attRawName":Ljava/lang/String;
    .end local v10    # "attType":Ljava/lang/String;
    .end local v11    # "attDefaultType":I
    .end local v12    # "attValue":Ljava/lang/String;
    .end local v13    # "specified":Z
    .end local v14    # "required":Z
    .end local v15    # "cdata":Z
    .end local v16    # "attrCount":I
    .end local v17    # "i":I
    :cond_d
    move-object/from16 v18, v4

    invoke-interface/range {v18 .. v18}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v18

    move/from16 v7, v18

    .line 346
    .local v7, "attrCount":I
    const/16 v18, 0x0

    move/from16 v8, v18

    .local v8, "i":I
    :goto_7
    move/from16 v18, v8

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    .line 347
    move-object/from16 v18, v4

    move/from16 v19, v8

    invoke-interface/range {v18 .. v19}, Lorg/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v9, v18

    .line 348
    .local v9, "attrRawName":Ljava/lang/String;
    const/16 v18, 0x0

    move/from16 v10, v18

    .line 349
    .local v10, "declared":Z
    const/16 v18, -0x1

    move/from16 v11, v18

    .line 350
    .local v11, "attDefIndex":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object/from16 v18, v0

    move/from16 v19, v5

    .line 351
    invoke-virtual/range {v18 .. v19}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v18

    move/from16 v12, v18

    .line 352
    .local v12, "position":I
    :goto_8
    move/from16 v18, v12

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 353
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object/from16 v18, v0

    move/from16 v19, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getAttributeDecl(ILcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)Z

    move-result v18

    .line 354
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lorg/apache/xerces/xni/QName;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v19, v9

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 356
    move/from16 v18, v12

    move/from16 v11, v18

    .line 357
    const/16 v18, 0x1

    move/from16 v10, v18

    .line 362
    :cond_e
    move/from16 v18, v10

    if-nez v18, :cond_11

    .line 363
    .line 346
    :cond_f
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 360
    :cond_10
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object/from16 v18, v0

    move/from16 v19, v12

    invoke-virtual/range {v18 .. v19}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v18

    move/from16 v12, v18

    goto :goto_8

    .line 366
    :cond_11
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->getAttributeTypeName(Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v13, v18

    .line 367
    .local v13, "type":Ljava/lang/String;
    move-object/from16 v18, v4

    move/from16 v19, v8

    move-object/from16 v20, v13

    invoke-interface/range {v18 .. v20}, Lorg/apache/xerces/xni/XMLAttributes;->setType(ILjava/lang/String;)V

    .line 369
    const/16 v18, 0x0

    move/from16 v14, v18

    .line 370
    .local v14, "changedByNormalization":Z
    move-object/from16 v18, v4

    move/from16 v19, v8

    invoke-interface/range {v18 .. v19}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v15, v18

    .line 371
    .local v15, "oldValue":Ljava/lang/String;
    move-object/from16 v18, v15

    move-object/from16 v16, v18

    .line 372
    .local v16, "attrValue":Ljava/lang/String;
    move-object/from16 v18, v4

    move/from16 v19, v8

    invoke-interface/range {v18 .. v19}, Lorg/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v18

    if-eqz v18, :cond_f

    move-object/from16 v18, v13

    sget-object v19, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_f

    .line 373
    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move/from16 v20, v8

    invoke-direct/range {v18 .. v20}, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->normalizeAttrValue(Lorg/apache/xerces/xni/XMLAttributes;I)Z

    move-result v18

    move/from16 v14, v18

    .line 374
    move-object/from16 v18, v4

    move/from16 v19, v8

    invoke-interface/range {v18 .. v19}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v18

    goto :goto_9

    .line 378
    .end local v9    # "attrRawName":Ljava/lang/String;
    .end local v10    # "declared":Z
    .end local v11    # "attDefIndex":I
    .end local v12    # "position":I
    .end local v13    # "type":Ljava/lang/String;
    .end local v14    # "changedByNormalization":Z
    .end local v15    # "oldValue":Ljava/lang/String;
    .end local v16    # "attrValue":Ljava/lang/String;
    :cond_12
    goto/16 :goto_0
.end method

.method public endCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    move-object v1, p1

    .local v1, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fInCDATASection:Z

    .line 238
    return-void
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    move-object v1, p1

    .local v1, "element":Lorg/apache/xerces/xni/QName;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->handleEndElement(Lorg/apache/xerces/xni/QName;)V

    .line 218
    return-void
.end method

.method protected handleEndElement(Lorg/apache/xerces/xni/QName;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 518
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    move-object v1, p1

    .local v1, "element":Lorg/apache/xerces/xni/QName;
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    .line 519
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    const/4 v3, -0x1

    if-ge v2, v3, :cond_0

    .line 520
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "FWK008 Element stack underflow"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 522
    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    if-gez v2, :cond_1

    .line 523
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    .line 524
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    .line 525
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    .line 526
    .line 529
    :goto_0
    return-void

    .line 528
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    aget-boolean v3, v3, v4

    iput-boolean v3, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    .line 529
    goto :goto_0
.end method

.method protected handleStartElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    move-object v1, p1

    .local v1, "element":Lorg/apache/xerces/xni/QName;
    move-object v2, p2

    .local v2, "attributes":Lorg/apache/xerces/xni/XMLAttributes;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    if-nez v3, :cond_0

    .line 497
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    .line 498
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    .line 499
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    .line 500
    .line 513
    :goto_0
    return-void

    .line 503
    :cond_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getElementDeclIndex(Lorg/apache/xerces/xni/QName;)I

    move-result v4

    iput v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    .line 504
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getContentSpecType(I)S

    move-result v4

    iput v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    .line 506
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->addDTDDefaultAttrs(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;)V

    .line 509
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    .line 510
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    .line 511
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->ensureStackCapacity(I)V

    .line 512
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    aput-boolean v5, v3, v4

    .line 513
    goto :goto_0

    .line 509
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isIgnorableWhiteSpace(Lorg/apache/xerces/xni/XMLString;)Z
    .locals 6

    .prologue
    .line 536
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    move-object v1, p1

    .local v1, "text":Lorg/apache/xerces/xni/XMLString;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->isInElementContent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 537
    move-object v3, v1

    iget v3, v3, Lorg/apache/xerces/xni/XMLString;->offset:I

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    iget v4, v4, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v5, v1

    iget v5, v5, Lorg/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    .line 538
    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move v4, v2

    aget-char v3, v3, v4

    invoke-static {v3}, Lorg/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 539
    const/4 v3, 0x0

    move v0, v3

    .line 544
    .end local v0    # "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    .end local v2    # "i":I
    :goto_1
    return v0

    .line 537
    .restart local v0    # "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 542
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 544
    .end local v2    # "i":I
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public isInElementContent()Z
    .locals 2

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    return v0
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    move-object v1, p1

    .local v1, "componentManager":Lorg/apache/xerces/xni/parser/XMLComponentManager;
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;

    .line 180
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fInCDATASection:Z

    .line 181
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    .line 182
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    .line 183
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    .line 185
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    const-string v5, "http://xml.org/sax/features/namespaces"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fNamespaces:Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .line 190
    :goto_0
    move-object v3, v0

    move-object v4, v1

    const-string v5, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/util/SymbolTable;

    iput-object v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 191
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    .line 192
    return-void

    .line 187
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 188
    .local v2, "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fNamespaces:Z

    goto :goto_0
.end method

.method public startCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    move-object v1, p1

    .local v1, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->fInCDATASection:Z

    .line 228
    return-void
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/DTDGrammarUtil;
    move-object v1, p1

    .local v1, "element":Lorg/apache/xerces/xni/QName;
    move-object v2, p2

    .local v2, "attributes":Lorg/apache/xerces/xni/XMLAttributes;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/dtd/DTDGrammarUtil;->handleStartElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;)V

    .line 206
    return-void
.end method
