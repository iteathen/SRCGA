.class Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;
.super Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
.source "AugmentationsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/AugmentationsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LargeContainer"
.end annotation


# instance fields
.field final fAugmentations:Ljava/util/Hashtable;

.field final synthetic this$0:Lorg/apache/xerces/util/AugmentationsImpl;


# direct methods
.method constructor <init>(Lorg/apache/xerces/util/AugmentationsImpl;)V
    .locals 6

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;
    move-object v1, p1

    .local v1, "this$0":Lorg/apache/xerces/util/AugmentationsImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;->this$0:Lorg/apache/xerces/util/AugmentationsImpl;

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;-><init>(Lorg/apache/xerces/util/AugmentationsImpl;)V

    .line 283
    move-object v2, v0

    new-instance v3, Ljava/util/Hashtable;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 303
    return-void
.end method

.method public expand()Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
    .locals 2

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;
    return-object v0
.end method

.method public getItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/Hashtable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;
    return-object v0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;
    return v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;
    return-object v0
.end method

.method public putItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "item":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/Hashtable;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;
    return-object v0
.end method

.method public removeItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/Hashtable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v4

    .line 315
    .local v1, "buff":Ljava/lang/StringBuffer;
    move-object v4, v1

    const-string v5, "LargeContainer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 316
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    move-object v2, v4

    .line 318
    .local v2, "keys":Ljava/util/Enumeration;
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 319
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 320
    .local v3, "key":Ljava/lang/Object;
    move-object v4, v1

    const-string v5, "\nkey == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 321
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 322
    move-object v4, v1

    const-string v5, "; value == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 323
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/Hashtable;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 324
    goto :goto_0

    .line 326
    .end local v3    # "key":Ljava/lang/Object;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;
    return-object v0
.end method
