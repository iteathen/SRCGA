.class public Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
.super Ljava/lang/Object;
.source "DTDGrammar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;
    }
.end annotation


# static fields
.field private static final CHUNK_MASK:I = 0xff

.field private static final CHUNK_SHIFT:I = 0x8

.field private static final CHUNK_SIZE:I = 0x100

.field private static final DEBUG:Z = false

.field private static final INITIAL_CHUNK_COUNT:I = 0x4

.field private static final LIST_FLAG:S = 0x80s

.field private static final LIST_MASK:S = -0x81s

.field public static final TOP_LEVEL_SCOPE:I = -0x1


# instance fields
.field protected fAttributeDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

.field private fAttributeDeclCount:I

.field private fAttributeDeclDefaultType:[[S

.field private fAttributeDeclDefaultValue:[[Ljava/lang/String;

.field private fAttributeDeclEnumeration:[[[Ljava/lang/String;

.field private fAttributeDeclName:[[Lorg/apache/xerces/xni/QName;

.field private fAttributeDeclNextAttributeDeclIndex:[[I

.field private fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

.field private fAttributeDeclType:[[S

.field protected fCurrentAttributeIndex:I

.field protected fCurrentElementIndex:I

.field protected fDTDContentModelSource:Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;

.field protected fDTDSource:Lorg/apache/xerces/xni/parser/XMLDTDSource;

.field private fDepth:I

.field private fElementDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;

.field private fElementDeclCount:I

.field private fElementDeclFirstAttributeDeclIndex:[[I

.field private fElementDeclLastAttributeDeclIndex:[[I

.field private fElementDeclName:[[Lorg/apache/xerces/xni/QName;

.field fElementDeclTab:Ljava/util/Hashtable;

.field private fElementDeclType:[[S

.field private fElementIndexMap:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;

.field private fEpsilonIndex:I

.field private fIsImmutable:Z

.field private fLeafCount:I

.field private fNodeIndexStack:[I

.field private fOpStack:[S

.field private fPrevNodeIndexStack:[I

.field private fQName:Lorg/apache/xerces/xni/QName;

.field private fQName2:Lorg/apache/xerces/xni/QName;

.field protected fReadingExternalDTD:Z

.field private fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

.field private fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field nodeIndex:I

.field private notationDecls:Ljava/util/ArrayList;

.field prevNodeIndex:I

.field valueIndex:I


# direct methods
.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 6

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move-object v1, p1

    .local v1, "symbolTable":Lorg/apache/xerces/util/SymbolTable;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 127
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fDTDSource:Lorg/apache/xerces/xni/parser/XMLDTDSource;

    .line 128
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fDTDContentModelSource:Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;

    .line 137
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fReadingExternalDTD:Z

    .line 141
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->notationDecls:Ljava/util/ArrayList;

    .line 146
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    .line 149
    move-object v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [[Lorg/apache/xerces/xni/QName;

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lorg/apache/xerces/xni/QName;

    .line 155
    move-object v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [[S

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    .line 159
    move-object v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [[I

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    .line 162
    move-object v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [[I

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    .line 167
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclCount:I

    .line 170
    move-object v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [[Lorg/apache/xerces/xni/QName;

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lorg/apache/xerces/xni/QName;

    .line 173
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fIsImmutable:Z

    .line 179
    move-object v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [[S

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    .line 182
    move-object v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [[[Ljava/lang/String;

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    .line 183
    move-object v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [[S

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    .line 184
    move-object v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [[Ljava/lang/String;

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    .line 185
    move-object v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [[Ljava/lang/String;

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    .line 186
    move-object v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [[I

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    .line 189
    move-object v2, v0

    new-instance v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementIndexMap:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;

    .line 192
    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/xni/QName;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fQName:Lorg/apache/xerces/xni/QName;

    .line 195
    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/xni/QName;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fQName2:Lorg/apache/xerces/xni/QName;

    .line 198
    move-object v2, v0

    new-instance v3, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    .line 202
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fLeafCount:I

    .line 203
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fEpsilonIndex:I

    .line 206
    move-object v2, v0

    new-instance v3, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;

    .line 209
    move-object v2, v0

    new-instance v3, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    .line 213
    move-object v2, v0

    new-instance v3, Ljava/util/Hashtable;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    .line 216
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fOpStack:[S

    .line 219
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fNodeIndexStack:[I

    .line 222
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fPrevNodeIndexStack:[I

    .line 225
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fDepth:I

    .line 227
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->valueIndex:I

    .line 228
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->prevNodeIndex:I

    .line 229
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->nodeIndex:I

    .line 234
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 235
    return-void
.end method

.method private ensureAttributeDeclCapacity(I)V
    .locals 6

    .prologue
    .line 851
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move v1, p1

    .local v1, "chunk":I
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lorg/apache/xerces/xni/QName;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 852
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lorg/apache/xerces/xni/QName;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lorg/apache/xerces/xni/QName;

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[Lorg/apache/xerces/xni/QName;I)[[Lorg/apache/xerces/xni/QName;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lorg/apache/xerces/xni/QName;

    .line 853
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[SI)[[S

    move-result-object v3

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    .line 854
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[[Ljava/lang/String;I)[[[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    .line 855
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[SI)[[S

    move-result-object v3

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    .line 856
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    .line 857
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    .line 858
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[II)[[I

    move-result-object v3

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    .line 864
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lorg/apache/xerces/xni/QName;

    move v3, v1

    const/16 v4, 0x100

    new-array v4, v4, [Lorg/apache/xerces/xni/QName;

    aput-object v4, v2, v3

    .line 865
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    move v3, v1

    const/16 v4, 0x100

    new-array v4, v4, [S

    aput-object v4, v2, v3

    .line 866
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    move v3, v1

    const/16 v4, 0x100

    new-array v4, v4, [[Ljava/lang/String;

    aput-object v4, v2, v3

    .line 867
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    move v3, v1

    const/16 v4, 0x100

    new-array v4, v4, [S

    aput-object v4, v2, v3

    .line 868
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    move v3, v1

    const/16 v4, 0x100

    new-array v4, v4, [Ljava/lang/String;

    aput-object v4, v2, v3

    .line 869
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    move v3, v1

    const/16 v4, 0x100

    new-array v4, v4, [Ljava/lang/String;

    aput-object v4, v2, v3

    .line 870
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    move v3, v1

    const/16 v4, 0x100

    new-array v4, v4, [I

    aput-object v4, v2, v3

    .line 871
    :goto_0
    return-void

    .line 860
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lorg/apache/xerces/xni/QName;

    move v3, v1

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 861
    goto :goto_0
.end method

.method private ensureElementDeclCapacity(I)V
    .locals 6

    .prologue
    .line 831
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move v1, p1

    .local v1, "chunk":I
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lorg/apache/xerces/xni/QName;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 833
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lorg/apache/xerces/xni/QName;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lorg/apache/xerces/xni/QName;

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[Lorg/apache/xerces/xni/QName;I)[[Lorg/apache/xerces/xni/QName;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lorg/apache/xerces/xni/QName;

    .line 834
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[SI)[[S

    move-result-object v3

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    .line 835
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[II)[[I

    move-result-object v3

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    .line 836
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[II)[[I

    move-result-object v3

    iput-object v3, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    .line 842
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lorg/apache/xerces/xni/QName;

    move v3, v1

    const/16 v4, 0x100

    new-array v4, v4, [Lorg/apache/xerces/xni/QName;

    aput-object v4, v2, v3

    .line 843
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    move v3, v1

    const/16 v4, 0x100

    new-array v4, v4, [S

    aput-object v4, v2, v3

    .line 844
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    move v3, v1

    const/16 v4, 0x100

    new-array v4, v4, [I

    aput-object v4, v2, v3

    .line 845
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    move v3, v1

    const/16 v4, 0x100

    new-array v4, v4, [I

    aput-object v4, v2, v3

    .line 846
    :goto_0
    return-void

    .line 838
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lorg/apache/xerces/xni/QName;

    move v3, v1

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 839
    goto :goto_0
.end method

.method private normalizeDefaultAttrValue(Lorg/apache/xerces/xni/XMLString;)Z
    .locals 11

    .prologue
    .line 1050
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move-object v1, p1

    .local v1, "value":Lorg/apache/xerces/xni/XMLString;
    move-object v7, v1

    iget v7, v7, Lorg/apache/xerces/xni/XMLString;->length:I

    move v2, v7

    .line 1052
    .local v2, "oldLength":I
    const/4 v7, 0x1

    move v3, v7

    .line 1053
    .local v3, "skipSpace":Z
    move-object v7, v1

    iget v7, v7, Lorg/apache/xerces/xni/XMLString;->offset:I

    move v4, v7

    .line 1054
    .local v4, "current":I
    move-object v7, v1

    iget v7, v7, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v8, v1

    iget v8, v8, Lorg/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v7, v8

    move v5, v7

    .line 1055
    .local v5, "end":I
    move-object v7, v1

    iget v7, v7, Lorg/apache/xerces/xni/XMLString;->offset:I

    move v6, v7

    .local v6, "i":I
    :goto_0
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_3

    .line 1056
    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move v8, v6

    aget-char v7, v7, v8

    const/16 v8, 0x20

    if-ne v7, v8, :cond_1

    .line 1057
    move v7, v3

    if-nez v7, :cond_0

    .line 1059
    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    const/16 v9, 0x20

    aput-char v9, v7, v8

    .line 1060
    const/4 v7, 0x1

    move v3, v7

    .line 1055
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1068
    :cond_1
    move v7, v4

    move v8, v6

    if-eq v7, v8, :cond_2

    .line 1069
    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move v8, v4

    move-object v9, v1

    iget-object v9, v9, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move v10, v6

    aget-char v9, v9, v10

    aput-char v9, v7, v8

    .line 1071
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 1072
    const/4 v7, 0x0

    move v3, v7

    goto :goto_1

    .line 1075
    :cond_3
    move v7, v4

    move v8, v5

    if-eq v7, v8, :cond_5

    .line 1076
    move v7, v3

    if-eqz v7, :cond_4

    .line 1078
    add-int/lit8 v4, v4, -0x1

    .line 1081
    :cond_4
    move-object v7, v1

    move v8, v4

    move-object v9, v1

    iget v9, v9, Lorg/apache/xerces/xni/XMLString;->offset:I

    sub-int/2addr v8, v9

    iput v8, v7, Lorg/apache/xerces/xni/XMLString;->length:I

    .line 1082
    const/4 v7, 0x1

    move v0, v7

    .line 1084
    .end local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    :goto_2
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    :cond_5
    const/4 v7, 0x0

    move v0, v7

    goto :goto_2
.end method

.method private printAttribute(I)V
    .locals 7

    .prologue
    .line 819
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move v1, p1

    .local v1, "attributeDeclIndex":I
    new-instance v3, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;-><init>()V

    move-object v2, v3

    .line 820
    .local v2, "attributeDecl":Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getAttributeDecl(ILcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 821
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " { "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 822
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lorg/apache/xerces/xni/QName;

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 823
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " }"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 826
    :cond_0
    return-void
.end method

.method private static resize([[BI)[[B
    .locals 8

    .prologue
    .line 878
    move-object v0, p0

    .local v0, "array":[[B
    move v1, p1

    .local v1, "newsize":I
    move v3, v1

    new-array v3, v3, [[B

    move-object v2, v3

    .line 879
    .local v2, "newarray":[[B
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 880
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "array":[[B
    return-object v0
.end method

.method private static resize([[II)[[I
    .locals 8

    .prologue
    .line 890
    move-object v0, p0

    .local v0, "array":[[I
    move v1, p1

    .local v1, "newsize":I
    move v3, v1

    new-array v3, v3, [[I

    move-object v2, v3

    .line 891
    .local v2, "newarray":[[I
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 892
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "array":[[I
    return-object v0
.end method

.method private static resize([[Ljava/lang/Object;I)[[Ljava/lang/Object;
    .locals 8

    .prologue
    .line 897
    move-object v0, p0

    .local v0, "array":[[Ljava/lang/Object;
    move v1, p1

    .local v1, "newsize":I
    move v3, v1

    new-array v3, v3, [[Ljava/lang/Object;

    move-object v2, v3

    .line 898
    .local v2, "newarray":[[Ljava/lang/Object;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 899
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "array":[[Ljava/lang/Object;
    return-object v0
.end method

.method private static resize([[Ljava/lang/String;I)[[Ljava/lang/String;
    .locals 8

    .prologue
    .line 909
    move-object v0, p0

    .local v0, "array":[[Ljava/lang/String;
    move v1, p1

    .local v1, "newsize":I
    move v3, v1

    new-array v3, v3, [[Ljava/lang/String;

    move-object v2, v3

    .line 910
    .local v2, "newarray":[[Ljava/lang/String;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 911
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "array":[[Ljava/lang/String;
    return-object v0
.end method

.method private static resize([[Lorg/apache/xerces/xni/QName;I)[[Lorg/apache/xerces/xni/QName;
    .locals 8

    .prologue
    .line 903
    move-object v0, p0

    .local v0, "array":[[Lorg/apache/xerces/xni/QName;
    move v1, p1

    .local v1, "newsize":I
    move v3, v1

    new-array v3, v3, [[Lorg/apache/xerces/xni/QName;

    move-object v2, v3

    .line 904
    .local v2, "newarray":[[Lorg/apache/xerces/xni/QName;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 905
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "array":[[Lorg/apache/xerces/xni/QName;
    return-object v0
.end method

.method private static resize([[SI)[[S
    .locals 8

    .prologue
    .line 884
    move-object v0, p0

    .local v0, "array":[[S
    move v1, p1

    .local v1, "newsize":I
    move v3, v1

    new-array v3, v3, [[S

    move-object v2, v3

    .line 885
    .local v2, "newarray":[[S
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 886
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "array":[[S
    return-object v0
.end method

.method private static resize([[[Ljava/lang/String;I)[[[Ljava/lang/String;
    .locals 8

    .prologue
    .line 915
    move-object v0, p0

    .local v0, "array":[[[Ljava/lang/String;
    move v1, p1

    .local v1, "newsize":I
    move v3, v1

    new-array v3, v3, [[[Ljava/lang/String;

    move-object v2, v3

    .line 916
    .local v2, "newarray":[[[Ljava/lang/String;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 917
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "array":[[[Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 375
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move-object/from16 v1, p1

    .local v1, "elementName":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "attributeName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "type":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "enumeration":[Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "defaultType":Ljava/lang/String;
    move-object/from16 v6, p6

    .local v6, "defaultValue":Lorg/apache/xerces/xni/XMLString;
    move-object/from16 v7, p7

    .local v7, "nonNormalizedDefaultValue":Lorg/apache/xerces/xni/XMLString;
    move-object/from16 v8, p8

    .local v8, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v12, v3

    sget-object v13, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-eq v12, v13, :cond_0

    move-object v12, v6

    if-eqz v12, :cond_0

    .line 376
    move-object v12, v0

    move-object v13, v6

    invoke-direct {v12, v13}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->normalizeDefaultAttrValue(Lorg/apache/xerces/xni/XMLString;)Z

    move-result v12

    .line 379
    :cond_0
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 400
    :goto_0
    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v12, v13}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result v12

    move v9, v12

    .line 404
    .local v9, "elementIndex":I
    move-object v12, v0

    move v13, v9

    move-object v14, v2

    invoke-virtual {v12, v13, v14}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getAttributeDeclIndex(ILjava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    .line 405
    .line 476
    :goto_1
    return-void

    .line 385
    .end local v9    # "elementIndex":I
    :cond_1
    move-object v12, v0

    move-object v13, v0

    invoke-virtual {v13}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->createElementDecl()I

    move-result v13

    iput v13, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentElementIndex:I

    .line 387
    new-instance v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;-><init>()V

    move-object v9, v12

    .line 388
    .local v9, "elementDecl":Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;
    move-object v12, v9

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->name:Lorg/apache/xerces/xni/QName;

    const/4 v13, 0x0

    move-object v14, v1

    move-object v15, v1

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    move-object v12, v9

    const/4 v13, -0x1

    iput v13, v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->scope:I

    .line 393
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    move-object v13, v1

    move-object v14, v9

    invoke-virtual {v12, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 396
    move-object v12, v0

    move-object v13, v0

    iget v13, v13, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentElementIndex:I

    move-object v14, v9

    invoke-virtual {v12, v13, v14}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->setElementDecl(ILcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;)V

    goto :goto_0

    .line 408
    .local v9, "elementIndex":I
    :cond_2
    move-object v12, v0

    move-object v13, v0

    invoke-virtual {v13}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->createAttributeDecl()I

    move-result v13

    iput v13, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentAttributeIndex:I

    .line 410
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    invoke-virtual {v12}, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->clear()V

    .line 411
    move-object v12, v5

    if-eqz v12, :cond_3

    .line 412
    move-object v12, v5

    const-string v13, "#FIXED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 413
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v13, 0x1

    iput-short v13, v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    .line 423
    :cond_3
    :goto_2
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    move-object v13, v6

    if-eqz v13, :cond_7

    move-object v13, v6

    invoke-virtual {v13}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_3
    iput-object v13, v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    .line 424
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    move-object v13, v7

    if-eqz v13, :cond_8

    move-object v13, v7

    invoke-virtual {v13}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_4
    iput-object v13, v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    .line 425
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    move-object v13, v4

    iput-object v13, v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    .line 427
    move-object v12, v3

    const-string v13, "CDATA"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 428
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v13, 0x0

    iput-short v13, v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    .line 467
    :cond_4
    :goto_5
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fQName:Lorg/apache/xerces/xni/QName;

    const/4 v13, 0x0

    move-object v14, v2

    move-object v15, v2

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fQName:Lorg/apache/xerces/xni/QName;

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->setValues(Lorg/apache/xerces/xni/QName;Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;Z)V

    .line 470
    move-object v12, v0

    move v13, v9

    move-object v14, v0

    iget v14, v14, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentAttributeIndex:I

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-virtual {v12, v13, v14, v15}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->setAttributeDecl(IILcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)V

    .line 472
    move-object v12, v0

    iget v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentAttributeIndex:I

    const/16 v13, 0x8

    shr-int/lit8 v12, v12, 0x8

    move v10, v12

    .line 473
    .local v10, "chunk":I
    move-object v12, v0

    iget v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentAttributeIndex:I

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    move v11, v12

    .line 474
    .local v11, "index":I
    move-object v12, v0

    move v13, v10

    invoke-direct {v12, v13}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->ensureAttributeDeclCapacity(I)V

    .line 476
    goto/16 :goto_1

    .line 414
    .end local v10    # "chunk":I
    .end local v11    # "index":I
    :cond_5
    move-object v12, v5

    const-string v13, "#IMPLIED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 415
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v13, 0x0

    iput-short v13, v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    goto :goto_2

    .line 416
    :cond_6
    move-object v12, v5

    const-string v13, "#REQUIRED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 417
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v13, 0x2

    iput-short v13, v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    goto/16 :goto_2

    .line 423
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 424
    :cond_8
    const/4 v13, 0x0

    goto :goto_4

    .line 430
    :cond_9
    move-object v12, v3

    const-string v13, "ID"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 431
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v13, 0x3

    iput-short v13, v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    goto :goto_5

    .line 433
    :cond_a
    move-object v12, v3

    const-string v13, "IDREF"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 434
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v13, 0x4

    iput-short v13, v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    .line 435
    move-object v12, v3

    const-string v13, "S"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_4

    .line 436
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    goto/16 :goto_5

    .line 439
    :cond_b
    move-object v12, v3

    const-string v13, "ENTITIES"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 440
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v13, 0x1

    iput-short v13, v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    .line 441
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    goto/16 :goto_5

    .line 443
    :cond_c
    move-object v12, v3

    const-string v13, "ENTITY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 444
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v13, 0x1

    iput-short v13, v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    goto/16 :goto_5

    .line 446
    :cond_d
    move-object v12, v3

    const-string v13, "NMTOKENS"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 447
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v13, 0x5

    iput-short v13, v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    .line 448
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    goto/16 :goto_5

    .line 450
    :cond_e
    move-object v12, v3

    const-string v13, "NMTOKEN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 451
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v13, 0x5

    iput-short v13, v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    goto/16 :goto_5

    .line 453
    :cond_f
    move-object v12, v3

    const-string v13, "NOTATION"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 454
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v13, 0x6

    iput-short v13, v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    goto/16 :goto_5

    .line 456
    :cond_10
    move-object v12, v3

    const-string v13, "ENUMERATION"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 457
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v13, 0x2

    iput-short v13, v12, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    goto/16 :goto_5

    .line 461
    :cond_11
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "!!! unknown attribute type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method protected createAttributeDecl()I
    .locals 9

    .prologue
    .line 745
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclCount:I

    const/16 v4, 0x8

    shr-int/lit8 v3, v3, 0x8

    move v1, v3

    .line 746
    .local v1, "chunk":I
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclCount:I

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move v2, v3

    .line 748
    .local v2, "index":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->ensureAttributeDeclCapacity(I)V

    .line 749
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lorg/apache/xerces/xni/QName;

    move v4, v1

    aget-object v3, v3, v4

    move v4, v2

    new-instance v5, Lorg/apache/xerces/xni/QName;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lorg/apache/xerces/xni/QName;-><init>()V

    aput-object v5, v3, v4

    .line 750
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    move v4, v1

    aget-object v3, v3, v4

    move v4, v2

    const/4 v5, -0x1

    aput-short v5, v3, v4

    .line 751
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    move v4, v1

    aget-object v3, v3, v4

    move v4, v2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 752
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    move v4, v1

    aget-object v3, v3, v4

    move v4, v2

    const/4 v5, 0x0

    aput-short v5, v3, v4

    .line 753
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    move v4, v1

    aget-object v3, v3, v4

    move v4, v2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 754
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    move v4, v1

    aget-object v3, v3, v4

    move v4, v2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 755
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    move v4, v1

    aget-object v3, v3, v4

    move v4, v2

    const/4 v5, -0x1

    aput v5, v3, v4

    .line 756
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclCount:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclCount:I

    move v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    return v0
.end method

.method protected createElementDecl()I
    .locals 9

    .prologue
    .line 696
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    const/16 v4, 0x8

    shr-int/lit8 v3, v3, 0x8

    move v1, v3

    .line 697
    .local v1, "chunk":I
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move v2, v3

    .line 698
    .local v2, "index":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->ensureElementDeclCapacity(I)V

    .line 699
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lorg/apache/xerces/xni/QName;

    move v4, v1

    aget-object v3, v3, v4

    move v4, v2

    new-instance v5, Lorg/apache/xerces/xni/QName;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lorg/apache/xerces/xni/QName;-><init>()V

    aput-object v5, v3, v4

    .line 700
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    move v4, v1

    aget-object v3, v3, v4

    move v4, v2

    const/4 v5, -0x1

    aput-short v5, v3, v4

    .line 701
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    move v4, v1

    aget-object v3, v3, v4

    move v4, v2

    const/4 v5, -0x1

    aput v5, v3, v4

    .line 702
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    move v4, v1

    aget-object v3, v3, v4

    move v4, v2

    const/4 v5, -0x1

    aput v5, v3, v4

    .line 703
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    move v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    return v0
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 291
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move-object/from16 v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "contentModel":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;

    move-object v4, v9

    .line 292
    .local v4, "tmpElementDecl":Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;
    move-object v9, v4

    if-eqz v9, :cond_2

    .line 293
    move-object v9, v4

    iget-short v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 294
    move-object v9, v0

    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentElementIndex:I

    .line 305
    :goto_0
    new-instance v9, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;-><init>()V

    move-object v5, v9

    .line 306
    .local v5, "elementDecl":Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;
    new-instance v9, Lorg/apache/xerces/xni/QName;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    move-object v12, v1

    move-object v13, v1

    const/4 v14, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Lorg/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v9

    .line 308
    .local v6, "elementName":Lorg/apache/xerces/xni/QName;
    move-object v9, v5

    iget-object v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->name:Lorg/apache/xerces/xni/QName;

    move-object v10, v6

    invoke-virtual {v9, v10}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    .line 309
    move-object v9, v5

    const/4 v10, -0x1

    iput v10, v9, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->scope:I

    .line 310
    move-object v9, v2

    const-string v10, "EMPTY"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 311
    move-object v9, v5

    const/4 v10, 0x1

    iput-short v10, v9, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    .line 327
    :cond_0
    :goto_1
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    move-object v10, v1

    move-object v11, v5

    invoke-virtual {v9, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 329
    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;

    .line 337
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentElementIndex:I

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;

    invoke-virtual {v9, v10, v11}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->setElementDecl(ILcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;)V

    .line 339
    move-object v9, v0

    iget v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentElementIndex:I

    const/16 v10, 0x8

    shr-int/lit8 v9, v9, 0x8

    move v7, v9

    .line 340
    .local v7, "chunk":I
    move-object v9, v0

    iget v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentElementIndex:I

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v8, v9

    .line 341
    .local v8, "index":I
    move-object v9, v0

    move v10, v7

    invoke-direct {v9, v10}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->ensureElementDeclCapacity(I)V

    .line 343
    .end local v5    # "elementDecl":Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;
    .end local v6    # "elementName":Lorg/apache/xerces/xni/QName;
    .end local v7    # "chunk":I
    .end local v8    # "index":I
    :goto_2
    return-void

    .line 298
    :cond_1
    goto :goto_2

    .line 302
    :cond_2
    move-object v9, v0

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->createElementDecl()I

    move-result v10

    iput v10, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentElementIndex:I

    goto :goto_0

    .line 313
    .restart local v5    # "elementDecl":Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;
    .restart local v6    # "elementName":Lorg/apache/xerces/xni/QName;
    :cond_3
    move-object v9, v2

    const-string v10, "ANY"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 314
    move-object v9, v5

    const/4 v10, 0x0

    iput-short v10, v9, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    goto :goto_1

    .line 316
    :cond_4
    move-object v9, v2

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 317
    move-object v9, v2

    const-string v10, "#PCDATA"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_5

    .line 318
    move-object v9, v5

    const/4 v10, 0x2

    iput-short v10, v9, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    goto :goto_1

    .line 321
    :cond_5
    move-object v9, v5

    const/4 v10, 0x3

    iput-short v10, v9, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    goto :goto_1
.end method

.method public endDTD(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "augs"    # Lorg/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1088
    return-void
.end method

.method public getAttributeDecl(ILcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)Z
    .locals 16

    .prologue
    .line 618
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move/from16 v1, p1

    .local v1, "attributeDeclIndex":I
    move-object/from16 v2, p2

    .local v2, "attributeDecl":Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;
    move v7, v1

    if-ltz v7, :cond_0

    move v7, v1

    move-object v8, v0

    iget v8, v8, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclCount:I

    if-lt v7, v8, :cond_1

    .line 619
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 642
    .end local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    :goto_0
    return v0

    .line 621
    .restart local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    :cond_1
    move v7, v1

    const/16 v8, 0x8

    shr-int/lit8 v7, v7, 0x8

    move v3, v7

    .line 622
    .local v3, "chunk":I
    move v7, v1

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    move v4, v7

    .line 624
    .local v4, "index":I
    move-object v7, v2

    iget-object v7, v7, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lorg/apache/xerces/xni/QName;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lorg/apache/xerces/xni/QName;

    move v9, v3

    aget-object v8, v8, v9

    move v9, v4

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    .line 629
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    move v8, v3

    aget-object v7, v7, v8

    move v8, v4

    aget-short v7, v7, v8

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 631
    const/4 v7, -0x1

    move v5, v7

    .line 632
    .local v5, "attributeType":S
    const/4 v7, 0x0

    move v6, v7

    .line 637
    .local v6, "isList":Z
    :goto_1
    move-object v7, v2

    iget-object v7, v7, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    move v8, v5

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lorg/apache/xerces/xni/QName;

    move v10, v3

    aget-object v9, v9, v10

    move v10, v4

    aget-object v9, v9, v10

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    move v11, v3

    aget-object v10, v10, v11

    move v11, v4

    aget-object v10, v10, v11

    move v11, v6

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    move v13, v3

    aget-object v12, v12, v13

    move v13, v4

    aget-short v12, v12, v13

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    move v14, v3

    aget-object v13, v13, v14

    move v14, v4

    aget-object v13, v13, v14

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    move v15, v3

    aget-object v14, v14, v15

    move v15, v4

    aget-object v14, v14, v15

    invoke-virtual/range {v7 .. v14}, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->setValues(SLjava/lang/String;[Ljava/lang/String;ZSLjava/lang/String;Ljava/lang/String;)V

    .line 642
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 634
    .end local v5    # "attributeType":S
    .end local v6    # "isList":Z
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    move v8, v3

    aget-object v7, v7, v8

    move v8, v4

    aget-short v7, v7, v8

    const/16 v8, -0x81

    and-int/lit16 v7, v7, -0x81

    int-to-short v7, v7

    move v5, v7

    .line 635
    .restart local v5    # "attributeType":S
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    move v8, v3

    aget-object v7, v7, v8

    move v8, v4

    aget-short v7, v7, v8

    const/16 v8, 0x80

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_2
    move v6, v7

    .restart local v6    # "isList":Z
    goto :goto_1

    .end local v6    # "isList":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public getAttributeDeclIndex(ILjava/lang/String;)I
    .locals 7

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move v1, p1

    .local v1, "elementDeclIndex":I
    move-object v2, p2

    .local v2, "attributeDeclName":Ljava/lang/String;
    move v4, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 239
    const/4 v4, -0x1

    move v0, v4

    .line 251
    .end local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    :goto_0
    return v0

    .line 241
    .restart local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    :cond_0
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v4

    move v3, v4

    .line 242
    .local v3, "attDefIndex":I
    :goto_1
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 243
    move-object v4, v0

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-virtual {v4, v5, v6}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getAttributeDecl(ILcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)Z

    move-result v4

    .line 245
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lorg/apache/xerces/xni/QName;

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v5, v2

    if-eq v4, v5, :cond_1

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    iget-object v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 246
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 247
    :cond_1
    move v4, v3

    move v0, v4

    goto :goto_0

    .line 249
    :cond_2
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v4

    move v3, v4

    goto :goto_1

    .line 251
    :cond_3
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0
.end method

.method public getContentSpecType(I)S
    .locals 6

    .prologue
    .line 530
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move v1, p1

    .local v1, "elementIndex":I
    move v4, v1

    if-ltz v4, :cond_0

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    if-lt v4, v5, :cond_1

    .line 531
    :cond_0
    const/4 v4, -0x1

    move v0, v4

    .line 541
    .end local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    :goto_0
    return v0

    .line 534
    .restart local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    :cond_1
    move v4, v1

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    move v2, v4

    .line 535
    .local v2, "chunk":I
    move v4, v1

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    move v3, v4

    .line 537
    .local v3, "index":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    move v5, v2

    aget-object v4, v4, v5

    move v5, v3

    aget-short v4, v4, v5

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 538
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0

    .line 541
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    move v5, v2

    aget-object v4, v4, v5

    move v5, v3

    aget-short v4, v4, v5

    const/16 v5, -0x81

    and-int/lit16 v4, v4, -0x81

    int-to-short v4, v4

    move v0, v4

    goto :goto_0
.end method

.method public getElementDecl(ILcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;)Z
    .locals 8

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move v1, p1

    .local v1, "elementDeclIndex":I
    move-object v2, p2

    .local v2, "elementDecl":Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;
    move v5, v1

    if-ltz v5, :cond_0

    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    if-lt v5, v6, :cond_1

    .line 557
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 575
    .end local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    :goto_0
    return v0

    .line 560
    .restart local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    :cond_1
    move v5, v1

    const/16 v6, 0x8

    shr-int/lit8 v5, v5, 0x8

    move v3, v5

    .line 561
    .local v3, "chunk":I
    move v5, v1

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v4, v5

    .line 563
    .local v4, "index":I
    move-object v5, v2

    iget-object v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->name:Lorg/apache/xerces/xni/QName;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lorg/apache/xerces/xni/QName;

    move v7, v3

    aget-object v6, v6, v7

    move v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    .line 565
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    move v6, v3

    aget-object v5, v5, v6

    move v6, v4

    aget-short v5, v5, v6

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 566
    move-object v5, v2

    const/4 v6, -0x1

    iput-short v6, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    .line 567
    move-object v5, v2

    iget-object v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    .line 573
    :goto_1
    move-object v5, v2

    iget-object v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v6, -0x1

    iput-short v6, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    .line 574
    move-object v5, v2

    iget-object v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    .line 575
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 569
    :cond_2
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    move v7, v3

    aget-object v6, v6, v7

    move v7, v4

    aget-short v6, v6, v7

    const/16 v7, -0x81

    and-int/lit16 v6, v6, -0x81

    int-to-short v6, v6

    iput-short v6, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    .line 570
    move-object v5, v2

    iget-object v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    move v7, v3

    aget-object v6, v6, v7

    move v7, v4

    aget-short v6, v6, v7

    const/16 v7, 0x80

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public getElementDeclIndex(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move-object v1, p1

    .local v1, "elementDeclName":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementIndexMap:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->get(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 515
    .local v2, "mapping":I
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    return v0
.end method

.method public getElementDeclIndex(Lorg/apache/xerces/xni/QName;)I
    .locals 4

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move-object v1, p1

    .local v1, "elementDeclQName":Lorg/apache/xerces/xni/QName;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    return v0
.end method

.method public getFirstAttributeDeclIndex(I)I
    .locals 6

    .prologue
    .line 589
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move v1, p1

    .local v1, "elementDeclIndex":I
    move v4, v1

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    move v2, v4

    .line 590
    .local v2, "chunk":I
    move v4, v1

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    move v3, v4

    .line 592
    .local v3, "index":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    move v5, v2

    aget-object v4, v4, v5

    move v5, v3

    aget v4, v4, v5

    move v0, v4

    .end local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    return v0
.end method

.method public getFirstElementDeclIndex()I
    .locals 2

    .prologue
    .line 491
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    if-ltz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getNextAttributeDeclIndex(I)I
    .locals 6

    .prologue
    .line 603
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move v1, p1

    .local v1, "attributeDeclIndex":I
    move v4, v1

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    move v2, v4

    .line 604
    .local v2, "chunk":I
    move v4, v1

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    move v3, v4

    .line 606
    .local v3, "index":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    move v5, v2

    aget-object v4, v4, v5

    move v5, v3

    aget v4, v4, v5

    move v0, v4

    .end local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    return v0
.end method

.method public getNextElementDeclIndex(I)I
    .locals 5

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move v1, p1

    .local v1, "elementDeclIndex":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    move v2, v1

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getNotationDecls()Ljava/util/List;
    .locals 2

    .prologue
    .line 811
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->notationDecls:Ljava/util/ArrayList;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    return-object v0
.end method

.method public getSymbolTable()Lorg/apache/xerces/util/SymbolTable;
    .locals 2

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    return-object v0
.end method

.method public isCDATAAttribute(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/QName;)Z
    .locals 8

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move-object v1, p1

    .local v1, "elName":Lorg/apache/xerces/xni/QName;
    move-object v2, p2

    .local v2, "atName":Lorg/apache/xerces/xni/QName;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getElementDeclIndex(Lorg/apache/xerces/xni/QName;)I

    move-result v5

    move v3, v5

    .line 657
    .local v3, "elDeclIdx":I
    move-object v5, v0

    move v6, v3

    move-object v7, v2

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getAttributeDeclIndex(ILjava/lang/String;)I

    move-result v5

    move v4, v5

    .line 658
    .local v4, "atDeclIdx":I
    move-object v5, v0

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getAttributeDecl(ILcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    iget-object v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-short v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    if-eqz v5, :cond_0

    .line 660
    const/4 v5, 0x0

    move v0, v5

    .line 662
    .end local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    :cond_0
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method

.method public notationDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 804
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "identifier":Lorg/apache/xerces/xni/XMLResourceIdentifier;
    move-object v3, p3

    .local v3, "augs":Lorg/apache/xerces/xni/Augmentations;
    new-instance v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;-><init>()V

    move-object v4, v5

    .line 805
    .local v4, "notationDecl":Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;
    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    invoke-interface {v7}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v7

    move-object v8, v2

    invoke-interface {v8}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v8

    move-object v9, v2

    .line 806
    invoke-interface {v9}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v9

    .line 805
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/xml/stream/dtd/nonvalidating/XMLNotationDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->notationDecls:Ljava/util/ArrayList;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 808
    return-void
.end method

.method public printAttributes(I)V
    .locals 5

    .prologue
    .line 679
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move v1, p1

    .local v1, "elementDeclIndex":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v3

    move v2, v3

    .line 680
    .local v2, "attributeDeclIndex":I
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(I)V

    .line 681
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 682
    :cond_0
    :goto_0
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 683
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(C)V

    .line 684
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(I)V

    .line 685
    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->printAttribute(I)V

    .line 686
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v3

    move v2, v3

    .line 687
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 688
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 691
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " ]"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method public printElements()V
    .locals 7

    .prologue
    .line 668
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    const/4 v3, 0x0

    move v1, v3

    .line 669
    .local v1, "elementDeclIndex":I
    new-instance v3, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;-><init>()V

    move-object v2, v3

    .line 670
    .local v2, "elementDecl":Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;
    :goto_0
    move-object v3, v0

    move v4, v1

    add-int/lit8 v1, v1, 0x1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->getElementDecl(ILcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 672
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "element decl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    iget-object v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->name:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    iget-object v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 676
    :cond_0
    return-void
.end method

.method protected setAttributeDecl(IILcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)V
    .locals 15

    .prologue
    .line 762
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move/from16 v1, p1

    .local v1, "elementDeclIndex":I
    move/from16 v2, p2

    .local v2, "attributeDeclIndex":I
    move-object/from16 v3, p3

    .local v3, "attributeDecl":Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;
    move v9, v2

    const/16 v10, 0x8

    shr-int/lit8 v9, v9, 0x8

    move v4, v9

    .line 763
    .local v4, "attrChunk":I
    move v9, v2

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v5, v9

    .line 764
    .local v5, "attrIndex":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lorg/apache/xerces/xni/QName;

    move v10, v4

    aget-object v9, v9, v10

    move v10, v5

    aget-object v9, v9, v10

    move-object v10, v3

    iget-object v10, v10, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v9, v10}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    .line 765
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    move v10, v4

    aget-object v9, v9, v10

    move v10, v5

    move-object v11, v3

    iget-object v11, v11, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-short v11, v11, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    aput-short v11, v9, v10

    .line 767
    move-object v9, v3

    iget-object v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-boolean v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    if-eqz v9, :cond_0

    .line 768
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    move v10, v4

    aget-object v9, v9, v10

    move v10, v5

    move-object v13, v9

    move v14, v10

    move-object v9, v13

    move v10, v14

    move-object v11, v13

    move v12, v14

    aget-short v11, v11, v12

    const/16 v12, 0x80

    or-int/lit16 v11, v11, 0x80

    int-to-short v11, v11

    aput-short v11, v9, v10

    .line 770
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    move v10, v4

    aget-object v9, v9, v10

    move v10, v5

    move-object v11, v3

    iget-object v11, v11, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-object v11, v11, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    aput-object v11, v9, v10

    .line 771
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    move v10, v4

    aget-object v9, v9, v10

    move v10, v5

    move-object v11, v3

    iget-object v11, v11, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-short v11, v11, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    aput-short v11, v9, v10

    .line 773
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    move v10, v4

    aget-object v9, v9, v10

    move v10, v5

    move-object v11, v3

    iget-object v11, v11, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-object v11, v11, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    aput-object v11, v9, v10

    .line 774
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    move v10, v4

    aget-object v9, v9, v10

    move v10, v5

    move-object v11, v3

    iget-object v11, v11, Lcom/sun/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-object v11, v11, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    aput-object v11, v9, v10

    .line 776
    move v9, v1

    const/16 v10, 0x8

    shr-int/lit8 v9, v9, 0x8

    move v6, v9

    .line 777
    .local v6, "elemChunk":I
    move v9, v1

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v7, v9

    .line 778
    .local v7, "elemIndex":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    move v10, v6

    aget-object v9, v9, v10

    move v10, v7

    aget v9, v9, v10

    move v8, v9

    .line 779
    .local v8, "index":I
    :goto_0
    move v9, v8

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 780
    move v9, v8

    move v10, v2

    if-ne v9, v10, :cond_3

    .line 781
    .line 787
    :cond_1
    move v9, v8

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 788
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    move v10, v6

    aget-object v9, v9, v10

    move v10, v7

    aget v9, v9, v10

    const/4 v10, -0x1

    if-ne v9, v10, :cond_4

    .line 789
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    move v10, v6

    aget-object v9, v9, v10

    move v10, v7

    move v11, v2

    aput v11, v9, v10

    .line 796
    :goto_1
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    move v10, v6

    aget-object v9, v9, v10

    move v10, v7

    move v11, v2

    aput v11, v9, v10

    .line 798
    :cond_2
    return-void

    .line 783
    :cond_3
    move v9, v8

    const/16 v10, 0x8

    shr-int/lit8 v9, v9, 0x8

    move v4, v9

    .line 784
    move v9, v8

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v5, v9

    .line 785
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    move v10, v4

    aget-object v9, v9, v10

    move v10, v5

    aget v9, v9, v10

    move v8, v9

    goto :goto_0

    .line 791
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    move v10, v6

    aget-object v9, v9, v10

    move v10, v7

    aget v9, v9, v10

    move v8, v9

    .line 792
    move v9, v8

    const/16 v10, 0x8

    shr-int/lit8 v9, v9, 0x8

    move v4, v9

    .line 793
    move v9, v8

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v5, v9

    .line 794
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    move v10, v4

    aget-object v9, v9, v10

    move v10, v5

    move v11, v2

    aput v11, v9, v10

    goto :goto_1
.end method

.method protected setElementDecl(ILcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;)V
    .locals 12

    .prologue
    .line 707
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move v1, p1

    .local v1, "elementDeclIndex":I
    move-object v2, p2

    .local v2, "elementDecl":Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;
    move v6, v1

    if-ltz v6, :cond_0

    move v6, v1

    move-object v7, v0

    iget v7, v7, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    if-lt v6, v7, :cond_1

    .line 708
    .line 726
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    move v6, v1

    const/16 v7, 0x8

    shr-int/lit8 v6, v6, 0x8

    move v3, v6

    .line 711
    .local v3, "chunk":I
    move v6, v1

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move v4, v6

    .line 713
    .local v4, "index":I
    move-object v6, v2

    iget v6, v6, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->scope:I

    move v5, v6

    .line 716
    .local v5, "scope":I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lorg/apache/xerces/xni/QName;

    move v7, v3

    aget-object v6, v6, v7

    move v7, v4

    aget-object v6, v6, v7

    move-object v7, v2

    iget-object v7, v7, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->name:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    .line 717
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    move v7, v3

    aget-object v6, v6, v7

    move v7, v4

    move-object v8, v2

    iget-short v8, v8, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    aput-short v8, v6, v7

    .line 721
    move-object v6, v2

    iget-object v6, v6, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->simpleType:Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-boolean v6, v6, Lcom/sun/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 722
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    move v7, v3

    aget-object v6, v6, v7

    move v7, v4

    move-object v10, v6

    move v11, v7

    move-object v6, v10

    move v7, v11

    move-object v8, v10

    move v9, v11

    aget-short v8, v8, v9

    const/16 v9, 0x80

    or-int/lit16 v8, v8, 0x80

    int-to-short v8, v8

    aput-short v8, v6, v7

    .line 725
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementIndexMap:Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;

    move-object v7, v2

    iget-object v7, v7, Lcom/sun/xml/stream/dtd/nonvalidating/XMLElementDecl;->name:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->put(Ljava/lang/String;I)V

    .line 726
    goto :goto_0
.end method

.method protected setFirstAttributeDeclIndex(II)V
    .locals 8

    .prologue
    .line 733
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move v1, p1

    .local v1, "elementDeclIndex":I
    move v2, p2

    .local v2, "newFirstAttrIndex":I
    move v5, v1

    if-ltz v5, :cond_0

    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    if-lt v5, v6, :cond_1

    .line 734
    .line 741
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    move v5, v1

    const/16 v6, 0x8

    shr-int/lit8 v5, v5, 0x8

    move v3, v5

    .line 738
    .local v3, "chunk":I
    move v5, v1

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v4, v5

    .line 740
    .local v4, "index":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    move v6, v3

    aget-object v5, v5, v6

    move v6, v4

    move v7, v2

    aput v7, v5, v6

    .line 741
    goto :goto_0
.end method

.method public startDTD(Lorg/apache/xerces/xni/XMLLocator;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;
    move-object v1, p1

    .local v1, "locator":Lorg/apache/xerces/xni/XMLLocator;
    move-object v2, p2

    .local v2, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fOpStack:[S

    .line 271
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fNodeIndexStack:[I

    .line 272
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/dtd/nonvalidating/DTDGrammar;->fPrevNodeIndexStack:[I

    .line 273
    return-void
.end method
