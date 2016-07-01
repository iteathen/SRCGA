.class public Lorg/apache/xerces/util/XMLAttributesImpl;
.super Ljava/lang/Object;
.source "XMLAttributesImpl.java"

# interfaces
.implements Lorg/apache/xerces/xni/XMLAttributes;
.implements Lcom/sun/xml/stream/XMLBufferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    }
.end annotation


# static fields
.field protected static final SIZE_LIMIT:I = 0x14

.field protected static final TABLE_SIZE:I = 0x65


# instance fields
.field protected fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

.field protected fAttributeTableViewChainState:[I

.field protected fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

.field protected fIsTableViewConsistent:Z

.field protected fLargeCount:I

.field protected fLength:I

.field protected fNamespaces:Z

.field protected fTableViewBuckets:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, v0

    const/16 v2, 0x65

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/XMLAttributesImpl;-><init>(I)V

    .line 157
    return-void
.end method

.method public constructor <init>(I)V
    .locals 8

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "tableSize":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 109
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    .line 118
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    .line 124
    move-object v3, v0

    const/4 v4, 0x4

    new-array v4, v4, [Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    iput-object v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 163
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    .line 164
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 165
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v2

    new-instance v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v5, v3, v4

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_0
    return-void
.end method


# virtual methods
.method public addAttribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, p1

    .local v1, "name":Lorg/apache/xerces/xni/QName;
    move-object v2, p2

    .local v2, "type":Ljava/lang/String;
    move-object v3, p3

    .local v3, "value":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/apache/xerces/util/XMLAttributesImpl;->addAttribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    return v0
.end method

.method public addAttribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;)I
    .locals 17

    .prologue
    .line 223
    move-object/from16 v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object/from16 v1, p1

    .local v1, "name":Lorg/apache/xerces/xni/QName;
    move-object/from16 v2, p2

    .local v2, "type":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "value":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "valueCache":Lorg/apache/xerces/xni/XMLString;
    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/16 v11, 0x14

    if-ge v10, v11, :cond_4

    .line 224
    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v10, :cond_0

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    move-object v10, v0

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 225
    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 226
    :goto_0
    move v5, v10

    .line 228
    .local v5, "index":I
    move v10, v5

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 229
    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move v5, v10

    .line 230
    move-object v10, v0

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move-object v15, v10

    move/from16 v16, v11

    move/from16 v10, v16

    move-object v11, v15

    move/from16 v12, v16

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v11, v11

    if-ne v10, v11, :cond_2

    .line 231
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v10, v10

    const/4 v11, 0x4

    add-int/lit8 v10, v10, 0x4

    new-array v10, v10, [Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v6, v10

    .line 232
    .local v6, "attributes":[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    const/4 v11, 0x0

    move-object v12, v6

    const/4 v13, 0x0

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v14, v14

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v10, v10

    move v7, v10

    .local v7, "i":I
    :goto_1
    move v10, v7

    move-object v11, v6

    array-length v11, v11

    if-ge v10, v11, :cond_1

    .line 234
    move-object v10, v6

    move v11, v7

    new-instance v12, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v12, v10, v11

    .line 233
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 225
    .end local v5    # "index":I
    .end local v6    # "attributes":[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    .end local v7    # "i":I
    :cond_0
    move-object v10, v0

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 226
    invoke-virtual {v10, v11}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;)I

    move-result v10

    goto :goto_0

    .line 236
    .restart local v5    # "index":I
    .restart local v6    # "attributes":[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    .restart local v7    # "i":I
    :cond_1
    move-object v10, v0

    move-object v11, v6

    iput-object v11, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 237
    .line 312
    .end local v6    # "attributes":[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    .end local v7    # "i":I
    :cond_2
    :goto_2
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v11, v5

    aget-object v10, v10, v11

    move-object v6, v10

    .line 313
    .local v6, "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    move-object v10, v6

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v11, v1

    invoke-virtual {v10, v11}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    .line 314
    move-object v10, v6

    move-object v11, v2

    iput-object v11, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    .line 315
    move-object v10, v6

    move-object v11, v3

    iput-object v11, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 316
    move-object v10, v6

    move-object v11, v4

    iput-object v11, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->xmlValue:Lorg/apache/xerces/xni/XMLString;

    .line 317
    move-object v10, v6

    move-object v11, v3

    iput-object v11, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 318
    move-object v10, v6

    const/4 v11, 0x0

    iput-boolean v11, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    .line 321
    move-object v10, v6

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lorg/apache/xerces/xni/Augmentations;

    if-eqz v10, :cond_3

    .line 322
    move-object v10, v6

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {v10}, Lorg/apache/xerces/xni/Augmentations;->removeAllItems()V

    .line 324
    :cond_3
    move v10, v5

    move v0, v10

    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    return v0

    .line 240
    .end local v5    # "index":I
    .end local v6    # "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :cond_4
    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v10, :cond_5

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 241
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v0

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 242
    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    move v15, v10

    move v10, v15

    move v11, v15

    move v5, v11

    .restart local v5    # "index":I
    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 252
    .end local v5    # "index":I
    :cond_5
    move-object v10, v0

    iget-boolean v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    if-eqz v10, :cond_6

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/16 v11, 0x14

    if-ne v10, v11, :cond_7

    .line 253
    :cond_6
    move-object v10, v0

    invoke-virtual {v10}, Lorg/apache/xerces/util/XMLAttributesImpl;->prepareAndPopulateTableView()V

    .line 254
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    .line 257
    :cond_7
    move-object v10, v0

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lorg/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;)I

    move-result v10

    move v6, v10

    .line 261
    .local v6, "bucket":I
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    move v11, v6

    aget v10, v10, v11

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v10, v11, :cond_a

    .line 262
    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move v5, v10

    .line 263
    .restart local v5    # "index":I
    move-object v10, v0

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move-object v15, v10

    move/from16 v16, v11

    move/from16 v10, v16

    move-object v11, v15

    move/from16 v12, v16

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v11, v11

    if-ne v10, v11, :cond_9

    .line 264
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v10, v10

    const/4 v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    new-array v10, v10, [Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v7, v10

    .line 265
    .local v7, "attributes":[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    const/4 v11, 0x0

    move-object v12, v7

    const/4 v13, 0x0

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v14, v14

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v10, v10

    move v8, v10

    .local v8, "i":I
    :goto_3
    move v10, v8

    move-object v11, v7

    array-length v11, v11

    if-ge v10, v11, :cond_8

    .line 267
    move-object v10, v7

    move v11, v8

    new-instance v12, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v12, v10, v11

    .line 266
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 269
    :cond_8
    move-object v10, v0

    move-object v11, v7

    iput-object v11, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 273
    .end local v7    # "attributes":[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    .end local v8    # "i":I
    :cond_9
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    move v11, v6

    move-object v12, v0

    iget v12, v12, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    aput v12, v10, v11

    .line 274
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v11, v5

    aget-object v10, v10, v11

    const/4 v11, 0x0

    iput-object v11, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 275
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v11, v6

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v13, v5

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    goto/16 :goto_2

    .line 281
    .end local v5    # "index":I
    :cond_a
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v11, v6

    aget-object v10, v10, v11

    move-object v7, v10

    .line 282
    .local v7, "found":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :goto_4
    move-object v10, v7

    if-eqz v10, :cond_b

    .line 283
    move-object v10, v7

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v10, v11, :cond_c

    .line 284
    .line 289
    :cond_b
    move-object v10, v7

    if-nez v10, :cond_f

    .line 290
    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move v5, v10

    .line 291
    .restart local v5    # "index":I
    move-object v10, v0

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move-object v15, v10

    move/from16 v16, v11

    move/from16 v10, v16

    move-object v11, v15

    move/from16 v12, v16

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v11, v11

    if-ne v10, v11, :cond_e

    .line 292
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v10, v10

    const/4 v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    new-array v10, v10, [Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v8, v10

    .line 293
    .local v8, "attributes":[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    const/4 v11, 0x0

    move-object v12, v8

    const/4 v13, 0x0

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v14, v14

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v10, v10

    move v9, v10

    .local v9, "i":I
    :goto_5
    move v10, v9

    move-object v11, v8

    array-length v11, v11

    if-ge v10, v11, :cond_d

    .line 295
    move-object v10, v8

    move v11, v9

    new-instance v12, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v12, v10, v11

    .line 294
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 286
    .end local v5    # "index":I
    .end local v8    # "attributes":[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    .end local v9    # "i":I
    :cond_c
    move-object v10, v7

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v7, v10

    goto :goto_4

    .line 297
    .restart local v5    # "index":I
    .restart local v8    # "attributes":[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    .restart local v9    # "i":I
    :cond_d
    move-object v10, v0

    move-object v11, v8

    iput-object v11, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 301
    .end local v8    # "attributes":[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    .end local v9    # "i":I
    :cond_e
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v11, v5

    aget-object v10, v10, v11

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v12, v6

    aget-object v11, v11, v12

    iput-object v11, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 302
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v11, v6

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v13, v5

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    goto/16 :goto_2

    .line 306
    .end local v5    # "index":I
    :cond_f
    move-object v10, v0

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;)I

    move-result v10

    move v5, v10

    .restart local v5    # "index":I
    goto/16 :goto_2
.end method

.method public addAttributeNS(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 898
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, p1

    .local v1, "name":Lorg/apache/xerces/xni/QName;
    move-object/from16 v2, p2

    .local v2, "type":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "value":Ljava/lang/String;
    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move v4, v7

    .line 899
    .local v4, "index":I
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move-object v12, v7

    move v13, v8

    move v7, v13

    move-object v8, v12

    move v9, v13

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v8, v8

    if-ne v7, v8, :cond_2

    .line 901
    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/16 v8, 0x14

    if-ge v7, v8, :cond_0

    .line 902
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    const/4 v8, 0x4

    add-int/lit8 v7, v7, 0x4

    new-array v7, v7, [Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v5, v7

    .line 907
    .local v5, "attributes":[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    const/4 v8, 0x0

    move-object v9, v5

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 908
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    move v6, v7

    .local v6, "i":I
    :goto_1
    move v7, v6

    move-object v8, v5

    array-length v8, v8

    if-ge v7, v8, :cond_1

    .line 909
    move-object v7, v5

    move v8, v6

    new-instance v9, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v9, v7, v8

    .line 908
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 905
    .end local v5    # "attributes":[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    .end local v6    # "i":I
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    new-array v7, v7, [Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v5, v7

    .restart local v5    # "attributes":[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    goto :goto_0

    .line 911
    .restart local v6    # "i":I
    :cond_1
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 915
    .end local v5    # "attributes":[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    .end local v6    # "i":I
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 916
    .local v5, "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    move-object v7, v5

    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    .line 917
    move-object v7, v5

    move-object v8, v2

    iput-object v8, v7, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    .line 918
    move-object v7, v5

    move-object v8, v3

    iput-object v8, v7, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 919
    move-object v7, v5

    move-object v8, v3

    iput-object v8, v7, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 920
    move-object v7, v5

    const/4 v8, 0x0

    iput-boolean v8, v7, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    .line 923
    move-object v7, v5

    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lorg/apache/xerces/xni/Augmentations;

    if-eqz v7, :cond_3

    .line 924
    move-object v7, v5

    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {v7}, Lorg/apache/xerces/xni/Augmentations;->removeAllItems()V

    .line 925
    :cond_3
    return-void
.end method

.method public checkDuplicatesNS()Lorg/apache/xerces/xni/QName;
    .locals 8

    .prologue
    .line 941
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/16 v6, 0x14

    if-gt v5, v6, :cond_3

    .line 942
    const/4 v5, 0x0

    move v1, v5

    .local v1, "i":I
    :goto_0
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 943
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v1

    aget-object v5, v5, v6

    move-object v2, v5

    .line 944
    .local v2, "att1":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v3, v5

    .local v3, "j":I
    :goto_1
    move v5, v3

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v5, v6, :cond_1

    .line 945
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 946
    .local v4, "att2":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    move-object v5, v2

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v6, v4

    iget-object v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v5, v6, :cond_0

    move-object v5, v2

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v6, v4

    iget-object v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v5, v6, :cond_0

    .line 948
    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v0, v5

    .line 994
    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    .local v1, "attr":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    .local v2, "bucket":I
    .local v3, "i":I
    .local v4, "found":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :goto_2
    return-object v0

    .line 944
    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    .local v1, "i":I
    .local v2, "att1":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    .local v3, "j":I
    .local v4, "att2":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 942
    .end local v4    # "att2":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 994
    .end local v1    # "i":I
    .end local v2    # "att1":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    .end local v3    # "j":I
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_2

    .line 957
    :cond_3
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    .line 959
    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/util/XMLAttributesImpl;->prepareTableView()V

    .line 964
    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .local v3, "i":I
    :goto_3
    move v5, v3

    if-ltz v5, :cond_2

    .line 965
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v3

    aget-object v5, v5, v6

    move-object v1, v5

    .line 966
    .local v1, "attr":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 970
    .local v2, "bucket":I
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    move v6, v2

    aget v5, v5, v6

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v5, v6, :cond_4

    .line 971
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    move v6, v2

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    aput v7, v5, v6

    .line 972
    move-object v5, v1

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 973
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v2

    move-object v7, v1

    aput-object v7, v5, v6

    .line 964
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 979
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v2

    aget-object v5, v5, v6

    move-object v4, v5

    .line 980
    .local v4, "found":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :goto_5
    move-object v5, v4

    if-eqz v5, :cond_6

    .line 981
    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v6, v1

    iget-object v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v5, v6, :cond_5

    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v6, v1

    iget-object v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v5, v6, :cond_5

    .line 983
    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v0, v5

    goto :goto_2

    .line 985
    :cond_5
    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v4, v5

    goto :goto_5

    .line 989
    :cond_6
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v7, v2

    aget-object v6, v6, v7

    iput-object v6, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 990
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v2

    move-object v7, v1

    aput-object v7, v5, v6

    goto :goto_4
.end method

.method protected cleanTableView()V
    .locals 7

    .prologue
    .line 1071
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-gez v2, :cond_1

    .line 1073
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    if-eqz v2, :cond_0

    .line 1074
    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    if-ltz v2, :cond_0

    .line 1075
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    move v3, v1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 1074
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1078
    .end local v1    # "i":I
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    .line 1080
    :cond_1
    return-void
.end method

.method public getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;
    .locals 4

    .prologue
    .line 800
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "attributeIndex":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v2, v3, :cond_1

    .line 801
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 803
    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v3, v1

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lorg/apache/xerces/xni/Augmentations;

    move-object v0, v2

    goto :goto_0
.end method

.method public getAugmentations(Ljava/lang/String;)Lorg/apache/xerces/xni/Augmentations;
    .locals 5

    .prologue
    .line 789
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, p1

    .local v1, "qName":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 790
    .local v2, "index":I
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v2

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lorg/apache/xerces/xni/Augmentations;

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    return-object v0

    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xni/Augmentations;
    .locals 7

    .prologue
    .line 775
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 776
    .local v3, "index":I
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v5, v3

    aget-object v4, v4, v5

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lorg/apache/xerces/xni/Augmentations;

    :goto_0
    move-object v0, v4

    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    return-object v0

    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 602
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, p1

    .local v1, "qName":Ljava/lang/String;
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v4, v5, :cond_1

    .line 603
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 604
    .local v3, "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v5, v1

    .line 605
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 606
    move v4, v2

    move v0, v4

    .line 609
    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    .end local v3    # "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :goto_1
    return v0

    .line 602
    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    .restart local v3    # "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 609
    .end local v3    # "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 622
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localPart":Ljava/lang/String;
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v5, v6, :cond_2

    .line 623
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 624
    .local v4, "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v6, v2

    .line 625
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    move-object v6, v4

    iget-object v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v5, v6, :cond_0

    move-object v5, v1

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v6, v1

    .line 627
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 628
    :cond_0
    move v5, v3

    move v0, v5

    .line 631
    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    .end local v4    # "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :goto_1
    return v0

    .line 622
    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    .restart local v4    # "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 631
    .end local v4    # "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :cond_2
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1
.end method

.method public getIndexByLocalName(Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 643
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, p1

    .local v1, "localPart":Ljava/lang/String;
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v4, v5, :cond_1

    .line 644
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 645
    .local v3, "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v5, v1

    .line 646
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 647
    move v4, v2

    move v0, v4

    .line 650
    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    .end local v3    # "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :goto_1
    return v0

    .line 643
    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    .restart local v3    # "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 650
    .end local v3    # "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method

.method public getIndexFast(Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 861
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, p1

    .local v1, "qName":Ljava/lang/String;
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v4, v5, :cond_1

    .line 862
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 863
    .local v3, "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 864
    move v4, v2

    move v0, v4

    .line 867
    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    .end local v3    # "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :goto_1
    return v0

    .line 861
    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    .restart local v3    # "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 867
    .end local v3    # "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method

.method public getIndexFast(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 1012
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localPart":Ljava/lang/String;
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v5, v6, :cond_1

    .line 1013
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 1014
    .local v4, "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v6, v2

    if-ne v5, v6, :cond_0

    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v6, v1

    if-ne v5, v6, :cond_0

    .line 1016
    move v5, v3

    move v0, v5

    .line 1019
    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    .end local v4    # "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :goto_1
    return v0

    .line 1012
    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    .restart local v4    # "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1019
    .end local v4    # "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :cond_1
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1
.end method

.method public getLength()I
    .locals 2

    .prologue
    .line 475
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 663
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    if-nez v2, :cond_0

    .line 664
    const-string v2, ""

    move-object v0, v2

    .line 669
    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :goto_0
    return-object v0

    .line 666
    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :cond_0
    move v2, v1

    if-ltz v2, :cond_1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v2, v3, :cond_2

    .line 667
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 669
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v3, v1

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 584
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v2, v3, :cond_1

    .line 585
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 587
    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v3, v1

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method

.method public getName(ILorg/apache/xerces/xni/QName;)V
    .locals 6

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move-object v2, p2

    .local v2, "attrName":Lorg/apache/xerces/xni/QName;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v5, v1

    aget-object v4, v4, v5

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    .line 376
    return-void
.end method

.method public getNonNormalizedValue(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    move-object v2, v3

    .line 438
    .local v2, "value":Ljava/lang/String;
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    return-object v0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 723
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "index":I
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v3, v4, :cond_1

    .line 724
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 728
    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :goto_0
    return-object v0

    .line 726
    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v2, v3

    .line 728
    .local v2, "prefix":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    const-string v3, ""

    goto :goto_1
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 682
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "index":I
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v3, v4, :cond_1

    .line 683
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 686
    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :goto_0
    return-object v0

    .line 685
    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v2, v3

    .line 686
    .local v2, "rawname":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    const-string v3, ""

    goto :goto_1
.end method

.method public getQualifiedName(I)Lorg/apache/xerces/xni/QName;
    .locals 4

    .prologue
    .line 690
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v2, v3, :cond_1

    .line 691
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 693
    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v3, v1

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v0, v2

    goto :goto_0
.end method

.method protected getReportableType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1030
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, p1

    .local v1, "type":Ljava/lang/String;
    move-object v2, v1

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1031
    const-string v2, "NMTOKEN"

    move-object v0, v2

    .line 1033
    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :cond_0
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public getSchemaId(I)Z
    .locals 4

    .prologue
    .line 831
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v2, v3, :cond_1

    .line 832
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 834
    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :goto_0
    return v0

    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v3, v1

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->schemaId:Z

    move v0, v2

    goto :goto_0
.end method

.method public getSchemaId(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 837
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, p1

    .local v1, "qname":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 838
    .local v2, "index":I
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v2

    aget-object v3, v3, v4

    iget-boolean v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->schemaId:Z

    :goto_0
    move v0, v3

    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    return v0

    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getSchemaId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 841
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    if-nez v4, :cond_0

    .line 842
    const/4 v4, 0x0

    move v0, v4

    .line 845
    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :goto_0
    return v0

    .line 844
    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 845
    .local v3, "index":I
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v5, v3

    aget-object v4, v4, v5

    iget-boolean v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->schemaId:Z

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected getTableViewBucket(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 1045
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, p1

    .local v1, "qname":Ljava/lang/String;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    return v0
.end method

.method protected getTableViewBucket(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 1058
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, p1

    .local v1, "localpart":Ljava/lang/String;
    move-object v2, p2

    .local v2, "uri":Ljava/lang/String;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 1059
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr v3, v4

    move v0, v3

    .line 1062
    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :goto_0
    return v0

    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr v3, v4

    move v0, v3

    goto :goto_0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v2, v3, :cond_1

    .line 500
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 502
    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, p1

    .local v1, "qname":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 518
    .local v2, "index":I
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v5, v2

    aget-object v4, v4, v5

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    return-object v0

    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 710
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    if-nez v4, :cond_0

    .line 711
    const/4 v4, 0x0

    move-object v0, v4

    .line 714
    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :goto_0
    return-object v0

    .line 713
    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 714
    .local v3, "index":I
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v3

    aget-object v5, v5, v6

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 739
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "index":I
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v3, v4, :cond_1

    .line 740
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 743
    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :goto_0
    return-object v0

    .line 742
    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v2, v3

    .line 743
    .local v2, "uri":Ljava/lang/String;
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 535
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v2, v3, :cond_1

    .line 536
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 540
    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :goto_0
    return-object v0

    .line 538
    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v3, v1

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v3, v1

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->xmlValue:Lorg/apache/xerces/xni/XMLString;

    if-eqz v2, :cond_2

    .line 539
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v3, v1

    aget-object v2, v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->xmlValue:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v3}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 540
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v3, v1

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, p1

    .local v1, "qname":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 556
    .local v2, "index":I
    move v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 557
    const/4 v3, 0x0

    move-object v0, v3

    .line 560
    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :goto_0
    return-object v0

    .line 558
    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v2

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 559
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v5, v2

    aget-object v4, v4, v5

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->xmlValue:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v4}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 560
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v2

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    move-object v0, v3

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 761
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndexByLocalName(Ljava/lang/String;)I

    move-result v4

    .line 762
    :goto_0
    move v3, v4

    .line 763
    .local v3, "index":I
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLAttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v0, v4

    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    return-object v0

    .line 761
    .end local v3    # "index":I
    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    .line 762
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_2
    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_1
    move-object v5, v1

    goto :goto_2

    .line 763
    .restart local v3    # "index":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isSpecified(I)Z
    .locals 4

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v3, v1

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    move v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    return v0
.end method

.method protected prepareAndPopulateTableView()V
    .locals 7

    .prologue
    .line 1101
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/util/XMLAttributesImpl;->prepareTableView()V

    .line 1105
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v4, v5, :cond_1

    .line 1106
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v5, v3

    aget-object v4, v4, v5

    move-object v1, v4

    .line 1107
    .local v1, "attr":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 1108
    .local v2, "bucket":I
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    move v5, v2

    aget v4, v4, v5

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v4, v5, :cond_0

    .line 1109
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    move v5, v2

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    aput v6, v4, v5

    .line 1110
    move-object v4, v1

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 1111
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v5, v2

    move-object v6, v1

    aput-object v6, v4, v5

    .line 1105
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1115
    :cond_0
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v2

    aget-object v5, v5, v6

    iput-object v5, v4, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 1116
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v5, v2

    move-object v6, v1

    aput-object v6, v4, v5

    goto :goto_1

    .line 1119
    .end local v1    # "attr":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    .end local v2    # "bucket":I
    :cond_1
    return-void
.end method

.method protected prepareTableView()V
    .locals 3

    .prologue
    .line 1086
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    if-nez v1, :cond_0

    .line 1087
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    new-array v2, v2, [Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    iput-object v2, v1, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    .line 1088
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    new-array v2, v2, [I

    iput-object v2, v1, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    .line 1093
    :goto_0
    return-void

    .line 1091
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLAttributesImpl;->cleanTableView()V

    goto :goto_0
.end method

.method public refresh()V
    .locals 4

    .prologue
    .line 1126
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lez v2, :cond_0

    .line 1127
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v2, v3, :cond_0

    .line 1128
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLAttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object v2

    .line 1127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1131
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public refresh(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 1133
    return-void
.end method

.method public removeAllAttributes()V
    .locals 3

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    .line 334
    return-void
.end method

.method public removeAttributeAt(I)V
    .locals 10

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    .line 346
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 347
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 348
    .local v2, "removedAttr":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v1

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move v8, v1

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v5, v2

    aput-object v5, v3, v4

    .line 354
    .end local v2    # "removedAttr":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    :cond_0
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    .line 355
    return-void
.end method

.method public setAugmentations(ILorg/apache/xerces/xni/Augmentations;)V
    .locals 5

    .prologue
    .line 813
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move-object v2, p2

    .local v2, "augs":Lorg/apache/xerces/xni/Augmentations;
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lorg/apache/xerces/xni/Augmentations;

    .line 814
    return-void
.end method

.method public setName(ILorg/apache/xerces/xni/QName;)V
    .locals 5

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move-object v2, p2

    .local v2, "attrName":Lorg/apache/xerces/xni/QName;
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    .line 365
    return-void
.end method

.method public setNamespaces(Z)V
    .locals 4

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "namespaces":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    .line 183
    return-void
.end method

.method public setNonNormalizedValue(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move-object v2, p2

    .local v2, "attrValue":Ljava/lang/String;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 424
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    move-object v2, v3

    .line 426
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setSchemaId(IZ)V
    .locals 5

    .prologue
    .line 828
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move v2, p2

    .local v2, "schemaId":Z
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    move v4, v2

    iput-boolean v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->schemaId:Z

    .line 829
    return-void
.end method

.method public setSpecified(IZ)V
    .locals 5

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move v2, p2

    .local v2, "specified":Z
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    move v4, v2

    iput-boolean v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    .line 451
    return-void
.end method

.method public setType(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move-object v2, p2

    .local v2, "attrType":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public setURI(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 823
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move-object v2, p2

    .local v2, "uri":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 824
    return-void
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 7

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move-object v2, p2

    .local v2, "attrValue":Ljava/lang/String;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/xerces/util/XMLAttributesImpl;->setValue(ILjava/lang/String;Lorg/apache/xerces/xni/XMLString;)V

    .line 406
    return-void
.end method

.method public setValue(ILjava/lang/String;Lorg/apache/xerces/xni/XMLString;)V
    .locals 7

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move-object v2, p2

    .local v2, "attrValue":Ljava/lang/String;
    move-object v3, p3

    .local v3, "value":Lorg/apache/xerces/xni/XMLString;
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v1

    aget-object v5, v5, v6

    move-object v4, v5

    .line 410
    .local v4, "attribute":Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 411
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 412
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->xmlValue:Lorg/apache/xerces/xni/XMLString;

    .line 413
    return-void
.end method
