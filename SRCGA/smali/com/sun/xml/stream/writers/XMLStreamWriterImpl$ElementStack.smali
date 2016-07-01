.class public Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;
.super Ljava/lang/Object;
.source "XMLStreamWriterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ElementStack"
.end annotation


# instance fields
.field protected fDepth:S

.field protected fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

.field final synthetic this$0:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;


# direct methods
.method public constructor <init>(Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;)V
    .locals 9

    .prologue
    .line 1935
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->this$0:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1936
    move-object v3, v0

    const/16 v4, 0xa

    new-array v4, v4, [Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    iput-object v4, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    .line 1938
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 1939
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move v4, v2

    new-instance v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;-><init>(Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;)V

    aput-object v5, v3, v4

    .line 1938
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1941
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 2012
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;
    move-object v1, v0

    const/4 v2, 0x0

    iput-short v2, v1, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    .line 2013
    return-void
.end method

.method public empty()Z
    .locals 2

    .prologue
    .line 2031
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;
    move-object v1, v0

    iget-short v1, v1, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    if-lez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public peek()Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    .locals 4

    .prologue
    .line 2023
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-object v2, v0

    iget-short v2, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;
    return-object v0
.end method

.method public pop()Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    .locals 7

    .prologue
    .line 2007
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-short v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    int-to-short v3, v3

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-short v4, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;
    return-object v0
.end method

.method public push(Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;)Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    .locals 11

    .prologue
    .line 1957
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;
    move-object v1, p1

    .local v1, "element":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    move-object v4, v0

    iget-short v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    array-length v5, v5

    if-ne v4, v5, :cond_0

    .line 1958
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-object v2, v4

    .line 1959
    .local v2, "array":[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    move-object v8, v0

    iget-short v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1960
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    .line 1962
    move-object v4, v0

    iget-short v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 1963
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move v5, v3

    new-instance v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->this$0:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;-><init>(Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;)V

    aput-object v6, v4, v5

    .line 1962
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1967
    .end local v2    # "array":[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    .end local v3    # "i":I
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-object v5, v0

    iget-short v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    aget-object v4, v4, v5

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->setValues(Lorg/apache/xerces/xni/QName;)V

    .line 1969
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget-short v6, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    int-to-short v7, v7

    iput-short v7, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    aget-object v4, v4, v5

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;
    return-object v0
.end method

.method public push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    .locals 16

    .prologue
    .line 1983
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;
    move-object/from16 v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "localpart":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "rawname":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "uri":Ljava/lang/String;
    move/from16 v5, p5

    .local v5, "isEmpty":Z
    move-object v8, v0

    iget-short v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    array-length v9, v9

    if-ne v8, v9, :cond_0

    .line 1984
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    array-length v8, v8

    const/4 v9, 0x2

    mul-int/lit8 v8, v8, 0x2

    new-array v8, v8, [Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-object v6, v8

    .line 1985
    .local v6, "array":[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    const/4 v9, 0x0

    move-object v10, v6

    const/4 v11, 0x0

    move-object v12, v0

    iget-short v12, v12, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1986
    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    .line 1988
    move-object v8, v0

    iget-short v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    move v7, v8

    .local v7, "i":I
    :goto_0
    move v8, v7

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    array-length v9, v9

    if-ge v8, v9, :cond_0

    .line 1989
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move v9, v7

    new-instance v10, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->this$0:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;

    invoke-direct {v11, v12}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;-><init>(Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;)V

    aput-object v10, v8, v9

    .line 1988
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1993
    .end local v6    # "array":[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    .end local v7    # "i":I
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-object v9, v0

    iget-short v9, v9, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    aget-object v8, v8, v9

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move v13, v5

    invoke-virtual/range {v8 .. v13}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1995
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    move-object v9, v0

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget-short v10, v10, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    move-object v14, v9

    move v15, v10

    move v9, v15

    move-object v10, v14

    move v11, v15

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    int-to-short v11, v11

    iput-short v11, v10, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    aget-object v8, v8, v9

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementStack;
    return-object v0
.end method
