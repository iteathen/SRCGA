.class public Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;
.super Ljava/lang/Object;
.source "XMLDocumentFragmentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ElementStack"
.end annotation


# instance fields
.field protected fCount:I

.field protected fDepth:I

.field protected fElements:[Lorg/apache/xerces/xni/QName;

.field protected fInt:[I

.field protected fLastDepth:I

.field protected fMark:I

.field protected fPosition:I

.field final synthetic this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;


# direct methods
.method public constructor <init>(Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;)V
    .locals 8

    .prologue
    .line 2116
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2097
    move-object v3, v0

    const/16 v4, 0x14

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fInt:[I

    .line 2117
    move-object v3, v0

    const/16 v4, 0x14

    new-array v4, v4, [Lorg/apache/xerces/xni/QName;

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    .line 2118
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 2119
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    move v4, v2

    new-instance v5, Lorg/apache/xerces/xni/QName;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lorg/apache/xerces/xni/QName;-><init>()V

    aput-object v5, v3, v4

    .line 2118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2121
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 7

    .prologue
    .line 2341
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    .line 2342
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fLastDepth:I

    .line 2343
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fCount:I

    .line 2344
    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fMark:I

    iput v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fPosition:I

    .line 2346
    return-void
.end method

.method public getLastPoppedElement()Lorg/apache/xerces/xni/QName;
    .locals 3

    .prologue
    .line 2357
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;
    return-object v0
.end method

.method public getNext()Lorg/apache/xerces/xni/QName;
    .locals 3

    .prologue
    .line 2161
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fPosition:I

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fCount:I

    if-ne v1, v2, :cond_0

    .line 2162
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fMark:I

    iput v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fPosition:I

    .line 2170
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fPosition:I

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;
    return-object v0
.end method

.method public matchElement(Lorg/apache/xerces/xni/QName;)Z
    .locals 11

    .prologue
    .line 2196
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;
    move-object v1, p1

    .local v1, "element":Lorg/apache/xerces/xni/QName;
    const/4 v3, 0x0

    move v2, v3

    .line 2197
    .local v2, "match":Z
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fLastDepth:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    if-le v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    const/4 v4, 0x3

    if-gt v3, v4, :cond_0

    .line 2202
    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v3, v4, :cond_1

    .line 2203
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    .line 2206
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fMark:I

    .line 2208
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fMark:I

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fPosition:I

    .line 2209
    const/4 v3, 0x1

    move v2, v3

    .line 2211
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fCount:I

    .line 2230
    :cond_0
    :goto_0
    move v3, v2

    if-eqz v3, :cond_2

    .line 2232
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fInt:[I

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fPosition:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fPosition:I

    aput v5, v3, v4

    .line 2244
    :goto_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fCount:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    array-length v4, v4

    if-ne v3, v4, :cond_3

    .line 2245
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fSkip:Z

    .line 2246
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    .line 2248
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->reposition()V

    .line 2255
    const/4 v3, 0x0

    move v0, v3

    .line 2266
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;
    :goto_2
    return v0

    .line 2222
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    goto :goto_0

    .line 2239
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fInt:[I

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aput v5, v3, v4

    goto :goto_1

    .line 2265
    :cond_3
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fLastDepth:I

    .line 2266
    move v3, v2

    move v0, v3

    goto :goto_2
.end method

.method public nextElement()Lorg/apache/xerces/xni/QName;
    .locals 10

    .prologue
    .line 2277
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fSkip:Z

    if-eqz v3, :cond_0

    .line 2278
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    .line 2280
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fCount:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fCount:I

    aget-object v3, v3, v4

    move-object v0, v3

    .line 2291
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;
    :goto_0
    return-object v0

    .line 2282
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;
    :cond_0
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    array-length v4, v4

    if-ne v3, v4, :cond_1

    .line 2283
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    array-length v3, v3

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Lorg/apache/xerces/xni/QName;

    move-object v1, v3

    .line 2284
    .local v1, "array":[Lorg/apache/xerces/xni/QName;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2285
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    .line 2286
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 2287
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    move v4, v2

    new-instance v5, Lorg/apache/xerces/xni/QName;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lorg/apache/xerces/xni/QName;-><init>()V

    aput-object v5, v3, v4

    .line 2286
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2291
    .end local v1    # "array":[Lorg/apache/xerces/xni/QName;
    .end local v2    # "i":I
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    aget-object v3, v3, v4

    move-object v0, v3

    goto :goto_0
.end method

.method public popElement()Lorg/apache/xerces/xni/QName;
    .locals 9

    .prologue
    .line 2308
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fSkip:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    if-eqz v1, :cond_1

    .line 2313
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fInt:[I

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    aget v2, v2, v3

    aget-object v1, v1, v2

    move-object v0, v1

    .line 2319
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v7, v2

    move v8, v3

    move v2, v8

    move-object v3, v7

    move v4, v8

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    aget-object v1, v1, v2

    move-object v0, v1

    goto :goto_0
.end method

.method public push()V
    .locals 9

    .prologue
    .line 2180
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fInt:[I

    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v7, v2

    move v8, v3

    move v2, v8

    move-object v3, v7

    move v4, v8

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fPosition:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fPosition:I

    aput v3, v1, v2

    .line 2181
    return-void
.end method

.method public pushElement(Lorg/apache/xerces/xni/QName;)Lorg/apache/xerces/xni/QName;
    .locals 11

    .prologue
    .line 2142
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;
    move-object v1, p1

    .local v1, "element":Lorg/apache/xerces/xni/QName;
    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    array-length v5, v5

    if-ne v4, v5, :cond_0

    .line 2143
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Lorg/apache/xerces/xni/QName;

    move-object v2, v4

    .line 2144
    .local v2, "array":[Lorg/apache/xerces/xni/QName;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2145
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    .line 2146
    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 2147
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    move v5, v3

    new-instance v6, Lorg/apache/xerces/xni/QName;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lorg/apache/xerces/xni/QName;-><init>()V

    aput-object v6, v4, v5

    .line 2146
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2150
    .end local v2    # "array":[Lorg/apache/xerces/xni/QName;
    .end local v3    # "i":I
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    aget-object v4, v4, v5

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    .line 2151
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    aget-object v4, v4, v5

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;
    return-object v0
.end method

.method public reposition()V
    .locals 7

    .prologue
    .line 2329
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;
    const/4 v2, 0x2

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    if-gt v2, v3, :cond_0

    .line 2330
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lorg/apache/xerces/xni/QName;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fInt:[I

    move v6, v1

    aget v5, v5, v6

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    .line 2329
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2337
    :cond_0
    return-void
.end method
