.class public Lcom/sun/javafx/css/FontFace$FontFaceSrc;
.super Ljava/lang/Object;
.source "FontFace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/FontFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontFaceSrc"
.end annotation


# instance fields
.field private final format:Ljava/lang/String;

.field private final src:Ljava/lang/String;

.field private final type:Lcom/sun/javafx/css/FontFace$FontFaceSrcType;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/css/FontFace$FontFaceSrcType;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/FontFace$FontFaceSrc;
    move-object v1, p1

    .local v1, "type":Lcom/sun/javafx/css/FontFace$FontFaceSrcType;
    move-object v2, p2

    .local v2, "src":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 138
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/css/FontFace$FontFaceSrc;->type:Lcom/sun/javafx/css/FontFace$FontFaceSrcType;

    .line 139
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/css/FontFace$FontFaceSrc;->src:Ljava/lang/String;

    .line 140
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/css/FontFace$FontFaceSrc;->format:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/css/FontFace$FontFaceSrcType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/FontFace$FontFaceSrc;
    move-object v1, p1

    .local v1, "type":Lcom/sun/javafx/css/FontFace$FontFaceSrcType;
    move-object v2, p2

    .local v2, "src":Ljava/lang/String;
    move-object v3, p3

    .local v3, "format":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 132
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/css/FontFace$FontFaceSrc;->type:Lcom/sun/javafx/css/FontFace$FontFaceSrcType;

    .line 133
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/css/FontFace$FontFaceSrc;->src:Ljava/lang/String;

    .line 134
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/css/FontFace$FontFaceSrc;->format:Ljava/lang/String;

    .line 135
    return-void
.end method

.method static final readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)Lcom/sun/javafx/css/FontFace$FontFaceSrc;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    move v0, p0

    .local v0, "bssVersion":I
    move-object v1, p1

    .local v1, "is":Ljava/io/DataInputStream;
    move-object v2, p2

    .local v2, "strings":[Ljava/lang/String;
    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    move v3, v7

    .line 166
    .local v3, "index":I
    move-object v7, v2

    move v8, v3

    aget-object v7, v7, v8

    if-eqz v7, :cond_0

    move-object v7, v2

    move v8, v3

    aget-object v7, v7, v8

    invoke-static {v7}, Lcom/sun/javafx/css/FontFace$FontFaceSrcType;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/css/FontFace$FontFaceSrcType;

    move-result-object v7

    :goto_0
    move-object v4, v7

    .line 168
    .local v4, "type":Lcom/sun/javafx/css/FontFace$FontFaceSrcType;
    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    move v3, v7

    .line 169
    move-object v7, v2

    move v8, v3

    aget-object v7, v7, v8

    move-object v5, v7

    .line 171
    .local v5, "src":Ljava/lang/String;
    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    move v3, v7

    .line 172
    move-object v7, v2

    move v8, v3

    aget-object v7, v7, v8

    move-object v6, v7

    .line 174
    .local v6, "format":Ljava/lang/String;
    new-instance v7, Lcom/sun/javafx/css/FontFace$FontFaceSrc;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    invoke-direct {v8, v9, v10, v11}, Lcom/sun/javafx/css/FontFace$FontFaceSrc;-><init>(Lcom/sun/javafx/css/FontFace$FontFaceSrcType;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    .end local v0    # "bssVersion":I
    return-object v0

    .line 166
    .end local v4    # "type":Lcom/sun/javafx/css/FontFace$FontFaceSrcType;
    .end local v5    # "src":Ljava/lang/String;
    .end local v6    # "format":Ljava/lang/String;
    .restart local v0    # "bssVersion":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/FontFace$FontFaceSrc;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/FontFace$FontFaceSrc;->format:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/FontFace$FontFaceSrc;
    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/FontFace$FontFaceSrc;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/FontFace$FontFaceSrc;->src:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/FontFace$FontFaceSrc;
    return-object v0
.end method

.method public getType()Lcom/sun/javafx/css/FontFace$FontFaceSrcType;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/FontFace$FontFaceSrc;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/FontFace$FontFaceSrc;->type:Lcom/sun/javafx/css/FontFace$FontFaceSrcType;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/FontFace$FontFaceSrc;
    return-object v0
.end method

.method final writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/FontFace$FontFaceSrc;
    move-object v1, p1

    .local v1, "os":Ljava/io/DataOutputStream;
    move-object v2, p2

    .local v2, "stringStore":Lcom/sun/javafx/css/StringStore;
    move-object v3, v1

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/FontFace$FontFaceSrc;->type:Lcom/sun/javafx/css/FontFace$FontFaceSrcType;

    invoke-virtual {v5}, Lcom/sun/javafx/css/FontFace$FontFaceSrcType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/css/StringStore;->addString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 159
    move-object v3, v1

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/FontFace$FontFaceSrc;->src:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/css/StringStore;->addString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 160
    move-object v3, v1

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/FontFace$FontFaceSrc;->format:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/css/StringStore;->addString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 161
    return-void
.end method
