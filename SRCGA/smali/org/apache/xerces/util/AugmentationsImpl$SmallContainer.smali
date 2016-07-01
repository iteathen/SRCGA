.class Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
.super Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
.source "AugmentationsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/AugmentationsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmallContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;
    }
.end annotation


# static fields
.field static final SIZE_LIMIT:I = 0xa


# instance fields
.field final fAugmentations:[Ljava/lang/Object;

.field fNumEntries:I

.field final synthetic this$0:Lorg/apache/xerces/util/AugmentationsImpl;


# direct methods
.method constructor <init>(Lorg/apache/xerces/util/AugmentationsImpl;)V
    .locals 4

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
    move-object v1, p1

    .local v1, "this$0":Lorg/apache/xerces/util/AugmentationsImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->this$0:Lorg/apache/xerces/util/AugmentationsImpl;

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;-><init>(Lorg/apache/xerces/util/AugmentationsImpl;)V

    .line 156
    move-object v2, v0

    const/16 v3, 0x14

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v2, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    .line 157
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_0

    .line 214
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v3, v1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 215
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 213
    move v2, v1

    const/4 v3, 0x2

    add-int/lit8 v2, v2, 0x2

    move v1, v2

    goto :goto_0

    .line 218
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    .line 219
    return-void
.end method

.method public expand()Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
    .locals 9

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
    new-instance v3, Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->this$0:Lorg/apache/xerces/util/AugmentationsImpl;

    invoke-direct {v4, v5}, Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;-><init>(Lorg/apache/xerces/util/AugmentationsImpl;)V

    move-object v1, v3

    .line 228
    .local v1, "expandedContainer":Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_0

    .line 229
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v5, v2

    aget-object v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;->putItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 228
    move v3, v2

    const/4 v4, 0x2

    add-int/lit8 v3, v3, 0x2

    move v2, v3

    goto :goto_0

    .line 233
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
    return-object v0
.end method

.method public getItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_1

    .line 165
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    move-object v0, v3

    .line 170
    .end local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
    :goto_1
    return-object v0

    .line 164
    .restart local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    add-int/lit8 v3, v3, 0x2

    move v2, v3

    goto :goto_0

    .line 170
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public isFull()Z
    .locals 3

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
    return v0

    .restart local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 5

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
    new-instance v1, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;-><init>(Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;)V

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
    return-object v0
.end method

.method public putItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "item":Ljava/lang/Object;
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    if-ge v5, v6, :cond_1

    .line 175
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v6, v3

    aget-object v5, v5, v6

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 176
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    move-object v4, v5

    .line 177
    .local v4, "oldValue":Ljava/lang/Object;
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v2

    aput-object v7, v5, v6

    .line 179
    move-object v5, v4

    move-object v0, v5

    .line 187
    .end local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
    .end local v4    # "oldValue":Ljava/lang/Object;
    :goto_1
    return-object v0

    .line 174
    .restart local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
    :cond_0
    move v5, v3

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    move v3, v5

    goto :goto_0

    .line 183
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    move-object v7, v1

    aput-object v7, v5, v6

    .line 184
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v2

    aput-object v7, v5, v6

    .line 185
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    .line 187
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method public removeItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    if-ge v5, v6, :cond_2

    .line 193
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v6, v2

    aget-object v5, v5, v6

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 194
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    move-object v3, v5

    .line 196
    .local v3, "oldValue":Ljava/lang/Object;
    move v5, v2

    move v4, v5

    .local v4, "j":I
    :goto_1
    move v5, v4

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    if-ge v5, v6, :cond_0

    .line 197
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v8, v4

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    .line 198
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v8, v4

    const/4 v9, 0x3

    add-int/lit8 v8, v8, 0x3

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    .line 196
    move v5, v4

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    move v4, v5

    goto :goto_1

    .line 201
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 202
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 203
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    .line 205
    move-object v5, v3

    move-object v0, v5

    .line 209
    .end local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
    .end local v3    # "oldValue":Ljava/lang/Object;
    .end local v4    # "j":I
    :goto_2
    return-object v0

    .line 192
    .restart local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
    :cond_1
    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    move v2, v5

    goto/16 :goto_0

    .line 209
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v3

    .line 238
    .local v1, "buff":Ljava/lang/StringBuffer;
    move-object v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmallContainer - fNumEntries == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 240
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    const/16 v4, 0x14

    if-ge v3, v4, :cond_0

    .line 241
    move-object v3, v1

    const-string v4, "\nfAugmentations["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 242
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 243
    move-object v3, v1

    const-string v4, "] == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 244
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 245
    move-object v3, v1

    const-string v4, "; fAugmentations["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 246
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 247
    move-object v3, v1

    const-string v4, "] == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 248
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 240
    move v3, v2

    const/4 v4, 0x2

    add-int/lit8 v3, v3, 0x2

    move v2, v3

    goto :goto_0

    .line 251
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;
    return-object v0
.end method
