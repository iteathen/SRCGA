.class public Lorg/apache/xerces/util/ParserConfigurationSettings;
.super Ljava/lang/Object;
.source "ParserConfigurationSettings.java"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLComponentManager;


# static fields
.field static counter:I


# instance fields
.field protected fFeatures:Ljava/util/Hashtable;

.field protected fParentSettings:Lorg/apache/xerces/xni/parser/XMLComponentManager;

.field protected fProperties:Ljava/util/Hashtable;

.field protected fRecognizedFeatures:Ljava/util/Vector;

.field protected fRecognizedProperties:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    sput v0, Lorg/apache/xerces/util/ParserConfigurationSettings;->counter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/ParserConfigurationSettings;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/ParserConfigurationSettings;-><init>(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 6

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/ParserConfigurationSettings;
    move-object v1, p1

    .local v1, "parent":Lorg/apache/xerces/xni/parser/XMLComponentManager;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 123
    move-object v2, v0

    new-instance v3, Ljava/util/Vector;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/Vector;

    .line 124
    move-object v2, v0

    new-instance v3, Ljava/util/Vector;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/Vector;

    .line 127
    move-object v2, v0

    new-instance v3, Ljava/util/Hashtable;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/Hashtable;

    .line 128
    move-object v2, v0

    new-instance v3, Ljava/util/Hashtable;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/Hashtable;

    .line 131
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/ParserConfigurationSettings;->fParentSettings:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    .line 133
    return-void
.end method


# virtual methods
.method public addRecognizedFeatures([Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/ParserConfigurationSettings;
    move-object v1, p1

    .local v1, "featureIds":[Ljava/lang/String;
    move-object v5, v1

    if-eqz v5, :cond_1

    move-object v5, v1

    array-length v5, v5

    :goto_0
    move v2, v5

    .line 150
    .local v2, "featureIdsCount":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 151
    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 152
    .local v4, "featureId":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/Vector;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 153
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/Vector;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 150
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 149
    .end local v2    # "featureIdsCount":I
    .end local v3    # "i":I
    .end local v4    # "featureId":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 157
    .restart local v2    # "featureIdsCount":I
    .restart local v3    # "i":I
    :cond_2
    return-void
.end method

.method public addRecognizedProperties([Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/ParserConfigurationSettings;
    move-object v1, p1

    .local v1, "propertyIds":[Ljava/lang/String;
    move-object v5, v1

    if-eqz v5, :cond_1

    move-object v5, v1

    array-length v5, v5

    :goto_0
    move v2, v5

    .line 193
    .local v2, "propertyIdsCount":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 194
    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 195
    .local v4, "propertyId":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/Vector;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 196
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/Vector;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 193
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 192
    .end local v2    # "propertyIdsCount":I
    .end local v3    # "i":I
    .end local v4    # "propertyId":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 200
    .restart local v2    # "propertyIdsCount":I
    .restart local v3    # "i":I
    :cond_2
    return-void
.end method

.method protected checkFeature(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/ParserConfigurationSettings;
    move-object v1, p1

    .local v1, "featureId":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/Vector;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 293
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/ParserConfigurationSettings;->fParentSettings:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    if-eqz v3, :cond_1

    .line 294
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/ParserConfigurationSettings;->fParentSettings:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    .line 302
    :cond_0
    return-void

    .line 297
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    .line 298
    .local v2, "type":S
    new-instance v3, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v2

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v3
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/ParserConfigurationSettings;
    move-object v1, p1

    .local v1, "propertyId":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/Vector;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 318
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/ParserConfigurationSettings;->fParentSettings:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    if-eqz v3, :cond_1

    .line 319
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/ParserConfigurationSettings;->fParentSettings:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 327
    :cond_0
    return-void

    .line 322
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    .line 323
    .local v2, "type":S
    new-instance v3, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v2

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v3
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/ParserConfigurationSettings;
    move-object v1, p1

    .local v1, "featureId":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/Hashtable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    move-object v2, v3

    .line 242
    .local v2, "state":Ljava/lang/Boolean;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 243
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/ParserConfigurationSettings;->checkFeature(Ljava/lang/String;)V

    .line 244
    const/4 v3, 0x0

    move v0, v3

    .line 246
    .end local v0    # "this":Lorg/apache/xerces/util/ParserConfigurationSettings;
    :goto_0
    return v0

    .restart local v0    # "this":Lorg/apache/xerces/util/ParserConfigurationSettings;
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/ParserConfigurationSettings;
    move-object v1, p1

    .local v1, "propertyId":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/Hashtable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 267
    .local v2, "propertyValue":Ljava/lang/Object;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 268
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    .line 271
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lorg/apache/xerces/util/ParserConfigurationSettings;
    return-object v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/ParserConfigurationSettings;
    move-object v1, p1

    .local v1, "featureId":Ljava/lang/String;
    move v2, p2

    .local v2, "state":Z
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/ParserConfigurationSettings;->checkFeature(Ljava/lang/String;)V

    .line 179
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/Hashtable;

    move-object v4, v1

    move v5, v2

    if-eqz v5, :cond_0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 180
    return-void

    .line 179
    :cond_0
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/ParserConfigurationSettings;
    move-object v1, p1

    .local v1, "propertyId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    .line 217
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/Hashtable;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 219
    return-void
.end method
