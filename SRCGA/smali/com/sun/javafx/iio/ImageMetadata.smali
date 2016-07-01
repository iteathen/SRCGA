.class public Lcom/sun/javafx/iio/ImageMetadata;
.super Ljava/lang/Object;
.source "ImageMetadata.java"


# instance fields
.field public final backgroundColor:Ljava/lang/Integer;

.field public final backgroundIndex:Ljava/lang/Integer;

.field public final blackIsZero:Ljava/lang/Boolean;

.field public final delayTime:Ljava/lang/Integer;

.field public final disposalMethod:Ljava/lang/Integer;

.field public final gamma:Ljava/lang/Float;

.field public final imageHeight:Ljava/lang/Integer;

.field public final imageLeftPosition:Ljava/lang/Integer;

.field public final imageTopPosition:Ljava/lang/Integer;

.field public final imageWidth:Ljava/lang/Integer;

.field public final loopCount:Ljava/lang/Integer;

.field public final transparentIndex:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 15

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ImageMetadata;
    move-object/from16 v1, p1

    .local v1, "gamma":Ljava/lang/Float;
    move-object/from16 v2, p2

    .local v2, "blackIsZero":Ljava/lang/Boolean;
    move-object/from16 v3, p3

    .local v3, "backgroundIndex":Ljava/lang/Integer;
    move-object/from16 v4, p4

    .local v4, "backgroundColor":Ljava/lang/Integer;
    move-object/from16 v5, p5

    .local v5, "transparentIndex":Ljava/lang/Integer;
    move-object/from16 v6, p6

    .local v6, "delayTime":Ljava/lang/Integer;
    move-object/from16 v7, p7

    .local v7, "loopCount":Ljava/lang/Integer;
    move-object/from16 v8, p8

    .local v8, "imageWidth":Ljava/lang/Integer;
    move-object/from16 v9, p9

    .local v9, "imageHeight":Ljava/lang/Integer;
    move-object/from16 v10, p10

    .local v10, "imageLeftPosition":Ljava/lang/Integer;
    move-object/from16 v11, p11

    .local v11, "imageTopPosition":Ljava/lang/Integer;
    move-object/from16 v12, p12

    .local v12, "disposalMethod":Ljava/lang/Integer;
    move-object v13, v0

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 118
    move-object v13, v0

    move-object v14, v1

    iput-object v14, v13, Lcom/sun/javafx/iio/ImageMetadata;->gamma:Ljava/lang/Float;

    .line 119
    move-object v13, v0

    move-object v14, v2

    iput-object v14, v13, Lcom/sun/javafx/iio/ImageMetadata;->blackIsZero:Ljava/lang/Boolean;

    .line 120
    move-object v13, v0

    move-object v14, v3

    iput-object v14, v13, Lcom/sun/javafx/iio/ImageMetadata;->backgroundIndex:Ljava/lang/Integer;

    .line 121
    move-object v13, v0

    move-object v14, v4

    iput-object v14, v13, Lcom/sun/javafx/iio/ImageMetadata;->backgroundColor:Ljava/lang/Integer;

    .line 122
    move-object v13, v0

    move-object v14, v5

    iput-object v14, v13, Lcom/sun/javafx/iio/ImageMetadata;->transparentIndex:Ljava/lang/Integer;

    .line 123
    move-object v13, v0

    move-object v14, v6

    iput-object v14, v13, Lcom/sun/javafx/iio/ImageMetadata;->delayTime:Ljava/lang/Integer;

    .line 124
    move-object v13, v0

    move-object v14, v7

    iput-object v14, v13, Lcom/sun/javafx/iio/ImageMetadata;->loopCount:Ljava/lang/Integer;

    .line 125
    move-object v13, v0

    move-object v14, v8

    iput-object v14, v13, Lcom/sun/javafx/iio/ImageMetadata;->imageWidth:Ljava/lang/Integer;

    .line 126
    move-object v13, v0

    move-object v14, v9

    iput-object v14, v13, Lcom/sun/javafx/iio/ImageMetadata;->imageHeight:Ljava/lang/Integer;

    .line 127
    move-object v13, v0

    move-object v14, v10

    iput-object v14, v13, Lcom/sun/javafx/iio/ImageMetadata;->imageLeftPosition:Ljava/lang/Integer;

    .line 128
    move-object v13, v0

    move-object v14, v11

    iput-object v14, v13, Lcom/sun/javafx/iio/ImageMetadata;->imageTopPosition:Ljava/lang/Integer;

    .line 129
    move-object v13, v0

    move-object v14, v12

    iput-object v14, v13, Lcom/sun/javafx/iio/ImageMetadata;->disposalMethod:Ljava/lang/Integer;

    .line 130
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ImageMetadata;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 135
    .local v1, "sb":Ljava/lang/StringBuffer;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/ImageMetadata;->gamma:Ljava/lang/Float;

    if-eqz v2, :cond_0

    .line 136
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " gamma: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/ImageMetadata;->gamma:Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 138
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/ImageMetadata;->blackIsZero:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 139
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " blackIsZero: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/ImageMetadata;->blackIsZero:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 141
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/ImageMetadata;->backgroundIndex:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 142
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " backgroundIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/ImageMetadata;->backgroundIndex:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 144
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/ImageMetadata;->backgroundColor:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 145
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " backgroundColor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/ImageMetadata;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 147
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/ImageMetadata;->delayTime:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 148
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " delayTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/ImageMetadata;->delayTime:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 150
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/ImageMetadata;->loopCount:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 151
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " loopCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/ImageMetadata;->loopCount:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 153
    :cond_5
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/ImageMetadata;->transparentIndex:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 154
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " transparentIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/ImageMetadata;->transparentIndex:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 156
    :cond_6
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/ImageMetadata;->imageWidth:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    .line 157
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " imageWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/ImageMetadata;->imageWidth:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 159
    :cond_7
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/ImageMetadata;->imageHeight:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    .line 160
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " imageHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/ImageMetadata;->imageHeight:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 162
    :cond_8
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/ImageMetadata;->imageLeftPosition:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    .line 163
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " imageLeftPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/ImageMetadata;->imageLeftPosition:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 165
    :cond_9
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/ImageMetadata;->imageTopPosition:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    .line 166
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " imageTopPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/ImageMetadata;->imageTopPosition:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 168
    :cond_a
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/ImageMetadata;->disposalMethod:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    .line 169
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " disposalMethod: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/ImageMetadata;->disposalMethod:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 171
    :cond_b
    move-object v2, v1

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 172
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/iio/ImageMetadata;
    return-object v0
.end method
