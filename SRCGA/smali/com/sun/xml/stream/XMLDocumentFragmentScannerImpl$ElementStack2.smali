.class public Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;
.super Ljava/lang/Object;
.source "XMLDocumentFragmentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ElementStack2"
.end annotation


# instance fields
.field protected fCount:I

.field protected fDepth:I

.field protected fLastDepth:I

.field protected fMark:I

.field protected fPosition:I

.field protected fQName:[Lorg/apache/xerces/xni/QName;

.field final synthetic this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;


# direct methods
.method public constructor <init>(Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;)V
    .locals 9

    .prologue
    .line 1953
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1935
    move-object v3, v0

    const/16 v4, 0x14

    new-array v4, v4, [Lorg/apache/xerces/xni/QName;

    iput-object v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lorg/apache/xerces/xni/QName;

    .line 1954
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lorg/apache/xerces/xni/QName;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 1955
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lorg/apache/xerces/xni/QName;

    move v4, v2

    new-instance v5, Lorg/apache/xerces/xni/QName;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lorg/apache/xerces/xni/QName;-><init>()V

    aput-object v5, v3, v4

    .line 1954
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1957
    :cond_0
    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x1

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fPosition:I

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fMark:I

    .line 1958
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 7

    .prologue
    .line 2074
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fLastDepth:I

    .line 2075
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    .line 2076
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    .line 2077
    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fMark:I

    iput v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fPosition:I

    .line 2078
    return-void
.end method

.method public getNext()Lorg/apache/xerces/xni/QName;
    .locals 8

    .prologue
    .line 2059
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fPosition:I

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    if-ne v1, v2, :cond_0

    .line 2060
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fMark:I

    iput v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fPosition:I

    .line 2062
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lorg/apache/xerces/xni/QName;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fPosition:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fPosition:I

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;
    return-object v0
.end method

.method public matchElement(Lorg/apache/xerces/xni/QName;)Z
    .locals 10

    .prologue
    .line 1996
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;
    move-object v1, p1

    .local v1, "element":Lorg/apache/xerces/xni/QName;
    const/4 v3, 0x0

    move v2, v3

    .line 1997
    .local v2, "match":Z
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fLastDepth:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    if-le v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    const/4 v4, 0x2

    if-gt v3, v4, :cond_0

    .line 2001
    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lorg/apache/xerces/xni/QName;

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v3, v4, :cond_1

    .line 2002
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    .line 2005
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fMark:I

    .line 2007
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fMark:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fPosition:I

    .line 2008
    const/4 v3, 0x1

    move v2, v3

    .line 2010
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    .line 2024
    :cond_0
    :goto_0
    move-object v3, v0

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fLastDepth:I

    .line 2025
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;
    return v0

    .line 2019
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    goto :goto_0
.end method

.method public nextElement()Lorg/apache/xerces/xni/QName;
    .locals 8

    .prologue
    .line 2038
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lorg/apache/xerces/xni/QName;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 2039
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    .line 2040
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->this$0:Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    .line 2044
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lorg/apache/xerces/xni/QName;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    aget-object v1, v1, v2

    move-object v0, v1

    .line 2049
    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lorg/apache/xerces/xni/QName;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    aget-object v1, v1, v2

    move-object v0, v1

    goto :goto_0
.end method

.method public popElement()I
    .locals 7

    .prologue
    .line 2068
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    move-object v5, v1

    move v6, v2

    move v1, v6

    move-object v2, v5

    move v3, v6

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;
    return v0
.end method

.method public resize()V
    .locals 10

    .prologue
    .line 1968
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lorg/apache/xerces/xni/QName;

    array-length v4, v4

    move v1, v4

    .line 1969
    .local v1, "oldLength":I
    move v4, v1

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Lorg/apache/xerces/xni/QName;

    move-object v2, v4

    .line 1970
    .local v2, "tmp":[Lorg/apache/xerces/xni/QName;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lorg/apache/xerces/xni/QName;

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1971
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lorg/apache/xerces/xni/QName;

    .line 1973
    move v4, v1

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lorg/apache/xerces/xni/QName;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 1974
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lorg/apache/xerces/xni/QName;

    move v5, v3

    new-instance v6, Lorg/apache/xerces/xni/QName;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lorg/apache/xerces/xni/QName;-><init>()V

    aput-object v6, v4, v5

    .line 1973
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1977
    :cond_0
    return-void
.end method
