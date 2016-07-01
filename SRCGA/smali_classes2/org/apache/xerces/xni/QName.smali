.class public Lorg/apache/xerces/xni/QName;
.super Ljava/lang/Object;
.source "QName.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public characters:[C

.field public localpart:Ljava/lang/String;

.field public prefix:Ljava/lang/String;

.field public rawname:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/QName;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 80
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/xni/QName;->characters:[C

    .line 115
    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/xni/QName;->clear()V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/QName;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localpart":Ljava/lang/String;
    move-object v3, p3

    .local v3, "rawname":Ljava/lang/String;
    move-object v4, p4

    .local v4, "uri":Ljava/lang/String;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 80
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/xerces/xni/QName;->characters:[C

    .line 120
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/QName;)V
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/QName;
    move-object v1, p1

    .local v1, "qname":Lorg/apache/xerces/xni/QName;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 80
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/xni/QName;->characters:[C

    .line 125
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    .line 126
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/QName;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 164
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 165
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 166
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/QName;
    new-instance v1, Lorg/apache/xerces/xni/QName;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lorg/apache/xerces/xni/QName;-><init>(Lorg/apache/xerces/xni/QName;)V

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/xni/QName;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/QName;
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lorg/apache/xerces/xni/QName;

    if-eqz v3, :cond_3

    .line 193
    move-object v3, v1

    check-cast v3, Lorg/apache/xerces/xni/QName;

    move-object v2, v3

    .line 194
    .local v2, "qname":Lorg/apache/xerces/xni/QName;
    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 195
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 202
    .end local v0    # "this":Lorg/apache/xerces/xni/QName;
    .end local v2    # "qname":Lorg/apache/xerces/xni/QName;
    :goto_1
    return v0

    .line 195
    .restart local v0    # "this":Lorg/apache/xerces/xni/QName;
    .restart local v2    # "qname":Lorg/apache/xerces/xni/QName;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 197
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 198
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 202
    .end local v2    # "qname":Lorg/apache/xerces/xni/QName;
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/QName;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 185
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    .line 187
    .end local v0    # "this":Lorg/apache/xerces/xni/QName;
    :goto_0
    return v0

    .restart local v0    # "this":Lorg/apache/xerces/xni/QName;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/QName;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localpart":Ljava/lang/String;
    move-object v3, p3

    .local v3, "rawname":Ljava/lang/String;
    move-object v4, p4

    .local v4, "uri":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 156
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 157
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 158
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setValues(Lorg/apache/xerces/xni/QName;)V
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/QName;
    move-object v1, p1

    .local v1, "qname":Lorg/apache/xerces/xni/QName;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iput-object v3, v2, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 139
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iput-object v3, v2, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 140
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iput-object v3, v2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 141
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v3, v2, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 142
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->characters:[C

    iput-object v3, v2, Lorg/apache/xerces/xni/QName;->characters:[C

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/QName;
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v3

    .line 209
    .local v1, "str":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    move v2, v3

    .line 210
    .local v2, "comma":Z
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 211
    move-object v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prefix=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 212
    const/4 v3, 0x1

    move v2, v3

    .line 214
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 215
    move v3, v2

    if-eqz v3, :cond_1

    .line 216
    move-object v3, v1

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 218
    :cond_1
    move-object v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "localpart=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 219
    const/4 v3, 0x1

    move v2, v3

    .line 221
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 222
    move v3, v2

    if-eqz v3, :cond_3

    .line 223
    move-object v3, v1

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 225
    :cond_3
    move-object v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rawname=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 226
    const/4 v3, 0x1

    move v2, v3

    .line 228
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 229
    move v3, v2

    if-eqz v3, :cond_5

    .line 230
    move-object v3, v1

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 232
    :cond_5
    move-object v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uri=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 234
    :cond_6
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lorg/apache/xerces/xni/QName;
    return-object v0
.end method
