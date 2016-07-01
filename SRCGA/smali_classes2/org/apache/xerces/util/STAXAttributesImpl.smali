.class public Lorg/apache/xerces/util/STAXAttributesImpl;
.super Ljava/lang/Object;
.source "STAXAttributesImpl.java"

# interfaces
.implements Lorg/apache/xerces/xni/XMLAttributes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    }
.end annotation


# instance fields
.field MAGIC_NUMBER:I

.field protected attrList:Ljava/util/ArrayList;

.field protected attrMap:Ljava/util/HashMap;

.field attr_index:I

.field protected dupList:Ljava/util/ArrayList;

.field protected fNamespaces:Z

.field private init:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    .line 55
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lorg/apache/xerces/util/STAXAttributesImpl;->MAGIC_NUMBER:I

    .line 57
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/util/STAXAttributesImpl;->fNamespaces:Z

    .line 58
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    .line 59
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/STAXAttributesImpl;->dupList:Ljava/util/ArrayList;

    .line 60
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/util/STAXAttributesImpl;->init:Z

    .line 62
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    .line 66
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v3, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    .line 68
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 69
    new-instance v3, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;-><init>(Lorg/apache/xerces/util/STAXAttributesImpl;)V

    move-object v2, v3

    .line 70
    .local v2, "attr":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    move-object v3, v2

    new-instance v4, Lorg/apache/xerces/xni/QName;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v4, v3, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    .line 71
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v2    # "attr":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "tableSize":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    .line 55
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Lorg/apache/xerces/util/STAXAttributesImpl;->MAGIC_NUMBER:I

    .line 57
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/xerces/util/STAXAttributesImpl;->fNamespaces:Z

    .line 58
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    .line 59
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/STAXAttributesImpl;->dupList:Ljava/util/ArrayList;

    .line 60
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/util/STAXAttributesImpl;->init:Z

    .line 62
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    .line 80
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    .line 82
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    .line 84
    return-void
.end method


# virtual methods
.method public addAttribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 13

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move-object v1, p1

    .local v1, "name":Lorg/apache/xerces/xni/QName;
    move-object v2, p2

    .local v2, "type":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "value":Ljava/lang/String;
    const/4 v7, 0x0

    move-object v4, v7

    .line 130
    .local v4, "attr":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_0

    .line 131
    new-instance v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    invoke-direct {v8, v9}, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;-><init>(Lorg/apache/xerces/util/STAXAttributesImpl;)V

    move-object v4, v7

    .line 132
    move-object v7, v4

    new-instance v8, Lorg/apache/xerces/xni/QName;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    .line 133
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 134
    move-object v7, v4

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    .line 141
    :goto_0
    move-object v7, v4

    iget-object v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    .line 142
    move-object v7, v4

    move-object v8, v2

    iput-object v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->type:Ljava/lang/String;

    .line 143
    move-object v7, v4

    move-object v8, v3

    iput-object v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 145
    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    const/4 v8, 0x5

    if-ge v7, v8, :cond_3

    .line 146
    const/4 v7, 0x0

    move-object v5, v7

    .line 147
    .local v5, "tmp":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_1
    move v7, v6

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    if-ge v7, v8, :cond_2

    .line 148
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v5, v7

    .line 149
    move-object v7, v5

    iget-object v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v7, v8, :cond_1

    .line 150
    move-object v7, v5

    move-object v8, v3

    iput-object v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 151
    move v7, v6

    move v0, v7

    .line 177
    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    .end local v6    # "i":I
    :goto_2
    return v0

    .line 137
    .end local v5    # "tmp":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    .restart local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v4, v7

    .line 138
    move-object v7, v4

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    goto :goto_0

    .line 147
    .restart local v5    # "tmp":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    .restart local v6    # "i":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 154
    .line 176
    .end local v6    # "i":I
    :cond_2
    :goto_3
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    .line 177
    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/util/STAXAttributesImpl;->getLength()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v0, v7

    goto :goto_2

    .line 155
    .end local v5    # "tmp":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    :cond_3
    const/4 v7, 0x0

    move-object v5, v7

    .line 156
    .restart local v5    # "tmp":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    move-object v7, v0

    iget-boolean v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->init:Z

    if-nez v7, :cond_6

    .line 157
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    if-nez v7, :cond_4

    .line 158
    move-object v7, v0

    new-instance v8, Ljava/util/HashMap;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    const/high16 v11, 0x40000000    # 2.0f

    invoke-direct {v9, v10, v11}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    .line 159
    :cond_4
    const/4 v7, 0x0

    move v6, v7

    .restart local v6    # "i":I
    :goto_4
    move v7, v6

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    if-ge v7, v8, :cond_5

    .line 160
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v5, v7

    .line 161
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    move-object v8, v5

    iget-object v8, v8, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 159
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 163
    :cond_5
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->init:Z

    .line 170
    .end local v6    # "i":I
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 171
    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/util/STAXAttributesImpl;->getLength()I

    move-result v7

    move v0, v7

    goto :goto_2

    .line 173
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_3
.end method

.method public addAttributeNS(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 616
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move-object v1, p1

    .local v1, "name":Lorg/apache/xerces/xni/QName;
    move-object v2, p2

    .local v2, "type":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "value":Ljava/lang/String;
    const/4 v7, 0x0

    move-object v4, v7

    .line 617
    .local v4, "attr":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_1

    .line 618
    new-instance v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    invoke-direct {v8, v9}, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;-><init>(Lorg/apache/xerces/util/STAXAttributesImpl;)V

    move-object v4, v7

    .line 619
    move-object v7, v4

    new-instance v8, Lorg/apache/xerces/xni/QName;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    .line 620
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 621
    move-object v7, v4

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    .line 627
    :goto_0
    move-object v7, v4

    iget-object v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    .line 628
    move-object v7, v4

    move-object v8, v2

    iput-object v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->type:Ljava/lang/String;

    .line 629
    move-object v7, v4

    move-object v8, v3

    iput-object v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 634
    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/util/STAXAttributesImpl;->MAGIC_NUMBER:I

    if-le v7, v8, :cond_7

    .line 635
    move-object v7, v0

    iget-boolean v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->init:Z

    if-nez v7, :cond_3

    .line 636
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    if-nez v7, :cond_0

    .line 637
    move-object v7, v0

    new-instance v8, Ljava/util/HashMap;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    const/high16 v11, 0x40000000    # 2.0f

    invoke-direct {v9, v10, v11}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    .line 638
    :cond_0
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    if-ge v7, v8, :cond_2

    .line 639
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v6, v7

    .line 640
    .local v6, "tmp":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    move-object v8, v6

    iget-object v8, v8, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 638
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 624
    .end local v5    # "i":I
    .end local v6    # "tmp":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v4, v7

    .line 625
    move-object v7, v4

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    goto :goto_0

    .line 642
    .restart local v5    # "i":I
    :cond_2
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->init:Z

    .line 644
    .end local v5    # "i":I
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 645
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v5, v7

    .line 646
    .local v5, "obj":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    move-object v7, v4

    move-object v8, v5

    iget-object v8, v8, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    iput-object v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    .line 647
    move-object v7, v5

    move-object v8, v4

    iput-object v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    .line 648
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    .line 649
    move-object v7, v5

    iget-boolean v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->dup:Z

    if-nez v7, :cond_5

    .line 650
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->dupList:Ljava/util/ArrayList;

    if-nez v7, :cond_4

    .line 651
    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->dupList:Ljava/util/ArrayList;

    .line 652
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->dupList:Ljava/util/ArrayList;

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 653
    move-object v7, v5

    const/4 v8, 0x1

    iput-boolean v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->dup:Z

    .line 655
    .line 662
    .end local v5    # "obj":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    :cond_5
    :goto_2
    return-void

    .line 657
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 658
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    goto :goto_2

    .line 661
    :cond_7
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    goto :goto_2
.end method

.method public checkDuplicatesNS()Lorg/apache/xerces/xni/QName;
    .locals 8

    .prologue
    .line 677
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/STAXAttributesImpl;->MAGIC_NUMBER:I

    if-gt v5, v6, :cond_3

    .line 678
    const/4 v5, 0x0

    move v1, v5

    .local v1, "i":I
    :goto_0
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 679
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v2, v5

    .line 680
    .local v2, "att1":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v3, v5

    .local v3, "j":I
    :goto_1
    move v5, v3

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    if-ge v5, v6, :cond_1

    .line 681
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v4, v5

    .line 682
    .local v4, "att2":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    move-object v5, v2

    iget-object v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v6, v4

    iget-object v6, v6, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v5, v6, :cond_0

    move-object v5, v2

    iget-object v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v6, v4

    iget-object v6, v6, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v5, v6, :cond_0

    .line 684
    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v0, v5

    .line 703
    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    .end local v4    # "att2":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    .local v3, "att2":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    :goto_2
    return-object v0

    .line 680
    .restart local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    .local v3, "j":I
    .restart local v4    # "att2":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 678
    .end local v4    # "att2":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 703
    .end local v2    # "att1":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    .end local v3    # "j":I
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_2

    .line 689
    .end local v1    # "i":I
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl;->dupList:Ljava/util/ArrayList;

    if-nez v5, :cond_4

    .line 690
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_2

    .line 691
    :cond_4
    const/4 v5, 0x0

    move v1, v5

    .restart local v1    # "i":I
    :goto_3
    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/STAXAttributesImpl;->dupList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 692
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl;->dupList:Ljava/util/ArrayList;

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v2, v5

    .line 693
    .restart local v2    # "att1":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    move-object v5, v2

    iget-object v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v3, v5

    .line 694
    .local v3, "att2":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    :goto_4
    move-object v5, v3

    if-eqz v5, :cond_6

    .line 695
    move-object v5, v2

    iget-object v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v6, v3

    iget-object v6, v6, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v5, v6, :cond_5

    move-object v5, v2

    iget-object v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v6, v3

    iget-object v6, v6, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v5, v6, :cond_5

    .line 697
    move-object v5, v3

    iget-object v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v0, v5

    goto :goto_2

    .line 699
    :cond_5
    move-object v5, v2

    iget-object v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v3, v5

    goto :goto_4

    .line 691
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;
    .locals 3

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "attributeIndex":I
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    return-object v0
.end method

.method public getAugmentations(Ljava/lang/String;)Lorg/apache/xerces/xni/Augmentations;
    .locals 3

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move-object v1, p1

    .local v1, "qName":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    return-object v0
.end method

.method public getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xni/Augmentations;
    .locals 4

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    return-object v0
.end method

.method protected getDuplicate(Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;Lorg/apache/xerces/xni/QName;)Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    .locals 6

    .prologue
    .line 714
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move-object v1, p1

    .local v1, "attr1":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    move-object v2, p2

    .local v2, "qname":Lorg/apache/xerces/xni/QName;
    move-object v4, v1

    move-object v3, v4

    .line 715
    .local v3, "att1":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v5, v2

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-ne v4, v5, :cond_1

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    if-nez v4, :cond_1

    move-object v4, v3

    move-object v0, v4

    .line 721
    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    :goto_0
    return-object v0

    .line 719
    .restart local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    :cond_0
    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v3, v4

    .line 716
    :cond_1
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 717
    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v5, v2

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v4, v5, :cond_0

    .line 718
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 721
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move-object v1, p1

    .local v1, "qName":Ljava/lang/String;
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    if-ge v4, v5, :cond_1

    .line 426
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v3, v4

    .line 427
    .local v3, "attribute":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v5, v1

    .line 428
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 429
    move v4, v2

    move v0, v4

    .line 432
    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    .end local v3    # "attribute":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    :goto_1
    return v0

    .line 425
    .restart local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    .restart local v3    # "attribute":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 432
    .end local v3    # "attribute":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
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

    iget v6, v6, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    if-ge v5, v6, :cond_2

    .line 446
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v4, v5

    .line 447
    .local v4, "attribute":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v6, v2

    .line 448
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    move-object v6, v4

    iget-object v6, v6, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v5, v6, :cond_0

    move-object v5, v1

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v6, v1

    .line 450
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 451
    :cond_0
    move v5, v3

    move v0, v5

    .line 454
    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    .end local v4    # "attribute":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    :goto_1
    return v0

    .line 445
    .restart local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    .restart local v4    # "attribute":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 454
    .end local v4    # "attribute":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    :cond_2
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1
.end method

.method public getLength()I
    .locals 2

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 467
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/util/STAXAttributesImpl;->fNamespaces:Z

    if-nez v2, :cond_0

    .line 468
    const-string v2, ""

    move-object v0, v2

    .line 470
    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v2, v2, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 412
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 414
    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v2, v2, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method

.method public getName(ILorg/apache/xerces/xni/QName;)V
    .locals 6

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move-object v2, p2

    .local v2, "attrName":Lorg/apache/xerces/xni/QName;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v4, v4, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    .line 225
    return-void
.end method

.method public getNonNormalizedValue(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v2, v3

    .line 282
    .local v2, "attribute":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    move-object v0, v3

    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    return-object v0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v2, v2, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    return-object v0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v2, v2, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    return-object v0
.end method

.method public getQualifiedName(I)Lorg/apache/xerces/xni/QName;
    .locals 4

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v2, v2, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    return-object v0
.end method

.method protected getReportableType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 707
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
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

    .line 708
    const-string v2, "NMTOKEN"

    move-object v0, v2

    .line 710
    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    :cond_0
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public getSchemaId(I)Z
    .locals 3

    .prologue
    .line 606
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "index":I
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    return v0
.end method

.method public getSchemaId(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move-object v1, p1

    .local v1, "qname":Ljava/lang/String;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    return v0
.end method

.method public getSchemaId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 612
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    return v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 341
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 343
    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v3, v3, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/STAXAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move-object v1, p1

    .local v1, "qname":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    return-object v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/util/STAXAttributesImpl;->fNamespaces:Z

    if-nez v4, :cond_0

    .line 505
    const/4 v4, 0x0

    move-object v0, v4

    .line 508
    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    :goto_0
    return-object v0

    .line 507
    .restart local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/util/STAXAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 508
    .local v3, "index":I
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/STAXAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v2, v2, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v2, v2, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->value:Ljava/lang/String;

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move-object v1, p1

    .local v1, "qname":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/util/STAXAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 544
    .local v3, "index":I
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/STAXAttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v0, v4

    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    return-object v0

    .restart local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isSpecified(I)Z
    .locals 4

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    iget-boolean v2, v2, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->specified:Z

    move v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    return v0
.end method

.method public removeAllAttributes()V
    .locals 3

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    .line 187
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 188
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 189
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/STAXAttributesImpl;->dupList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 190
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/STAXAttributesImpl;->dupList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 191
    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/util/STAXAttributesImpl;->init:Z

    .line 192
    return-void
.end method

.method public removeAttributeAt(I)V
    .locals 5

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v2, v3

    .line 204
    .local v2, "attr":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    return-void
.end method

.method public setAugmentations(ILorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "attrIndex"    # I
    .param p2, "augs"    # Lorg/apache/xerces/xni/Augmentations;

    .prologue
    .line 589
    return-void
.end method

.method public setName(ILorg/apache/xerces/xni/QName;)V
    .locals 5

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move-object v2, p2

    .local v2, "attrName":Lorg/apache/xerces/xni/QName;
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v3, v3, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    .line 214
    return-void
.end method

.method public setNamespaces(Z)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "namespaces":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xerces/util/STAXAttributesImpl;->fNamespaces:Z

    .line 97
    return-void
.end method

.method public setNonNormalizedValue(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move-object v2, p2

    .local v2, "attrValue":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v3, v4

    .line 270
    .local v3, "attribute":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setSchemaId(IZ)V
    .locals 0
    .param p1, "attrIndex"    # I
    .param p2, "schemaId"    # Z

    .prologue
    .line 604
    return-void
.end method

.method public setSpecified(IZ)V
    .locals 5

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move v2, p2

    .local v2, "specified":Z
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move v4, v2

    iput-boolean v4, v3, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->specified:Z

    .line 295
    return-void
.end method

.method public setType(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move-object v2, p2

    .local v2, "attrType":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->type:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setURI(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move-object v2, p2

    .local v2, "uri":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v3, v4

    .line 599
    .local v3, "attribute":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 600
    return-void
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/STAXAttributesImpl;
    move v1, p1

    .local v1, "attrIndex":I
    move-object v2, p2

    .local v2, "attrValue":Ljava/lang/String;
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/STAXAttributesImpl;->attr_index:I

    if-le v4, v5, :cond_0

    .line 255
    .line 259
    :goto_0
    return-void

    .line 256
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;

    move-object v3, v4

    .line 257
    .local v3, "attribute":Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 258
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/util/STAXAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 259
    goto :goto_0
.end method
