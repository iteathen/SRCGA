.class public final Lcom/sun/javafx/scene/layout/region/Margins$Converter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "Margins.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/layout/region/Margins;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Converter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue;",
        "Lcom/sun/javafx/scene/layout/region/Margins;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/Margins$Converter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/scene/layout/region/Margins$1;)V
    .locals 3

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/Margins$Converter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/scene/layout/region/Margins$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/layout/region/Margins$Converter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/scene/layout/region/Margins$Converter;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/sun/javafx/scene/layout/region/Margins$Holder;->CONVERTER_INSTANCE:Lcom/sun/javafx/scene/layout/region/Margins$Converter;

    return-object v0
.end method


# virtual methods
.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Lcom/sun/javafx/scene/layout/region/Margins;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Lcom/sun/javafx/scene/layout/region/Margins;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Lcom/sun/javafx/scene/layout/region/Margins;"
        }
    .end annotation

    .prologue
    .line 93
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/layout/region/Margins$Converter;
    move-object/from16 v3, p1

    .local v3, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Lcom/sun/javafx/scene/layout/region/Margins;>;"
    move-object/from16 v4, p2

    .local v4, "font":Ljavafx/scene/text/Font;
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljavafx/css/ParsedValue;

    move-object/from16 v5, v20

    .line 94
    .local v5, "sides":[Ljavafx/css/ParsedValue;, "[Ljavafx/css/ParsedValue<*Lcom/sun/javafx/css/Size;>;"
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_3

    move-object/from16 v20, v5

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/css/Size;

    :goto_0
    move-object/from16 v6, v20

    .line 95
    .local v6, "topSz":Lcom/sun/javafx/css/Size;
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    move-object/from16 v20, v5

    const/16 v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/css/Size;

    :goto_1
    move-object/from16 v7, v20

    .line 96
    .local v7, "rightSz":Lcom/sun/javafx/css/Size;
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    move-object/from16 v20, v5

    const/16 v21, 0x2

    aget-object v20, v20, v21

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/css/Size;

    :goto_2
    move-object/from16 v8, v20

    .line 97
    .local v8, "bottomSz":Lcom/sun/javafx/css/Size;
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    move-object/from16 v20, v5

    const/16 v21, 0x3

    aget-object v20, v20, v21

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/css/Size;

    :goto_3
    move-object/from16 v9, v20

    .line 100
    .local v9, "leftSz":Lcom/sun/javafx/css/Size;
    move-object/from16 v20, v6

    .line 101
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v20

    sget-object v21, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_0

    move-object/from16 v20, v7

    .line 102
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v20

    sget-object v21, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_0

    move-object/from16 v20, v8

    .line 103
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v20

    sget-object v21, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_0

    move-object/from16 v20, v9

    .line 104
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v20

    sget-object v21, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_7

    :cond_0
    const/16 v20, 0x1

    :goto_4
    move/from16 v10, v20

    .line 107
    .local v10, "proportional":Z
    move/from16 v20, v10

    if-eqz v20, :cond_1

    move-object/from16 v20, v6

    .line 109
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v20

    sget-object v21, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    move-object/from16 v20, v7

    .line 110
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v20

    sget-object v21, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    move-object/from16 v20, v8

    .line 111
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v20

    sget-object v21, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    move-object/from16 v20, v9

    .line 112
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v20

    sget-object v21, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    :cond_1
    const/16 v20, 0x1

    :goto_5
    move/from16 v11, v20

    .line 116
    .local v11, "unitsMatch":Z
    move/from16 v20, v11

    if-nez v20, :cond_2

    .line 117
    invoke-static {}, Lcom/sun/javafx/util/Logging;->getCSSLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v20

    move-object/from16 v12, v20

    .line 118
    .local v12, "LOGGER":Lsun/util/logging/PlatformLogger;
    move-object/from16 v20, v12

    sget-object v21, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual/range {v20 .. v21}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 119
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v31, v20

    move-object/from16 v20, v31

    move-object/from16 v21, v31

    const-string v22, "units do no match: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v21, v6

    .line 121
    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/css/Size;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ,"

    .line 122
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/css/Size;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ,"

    .line 123
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/css/Size;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ,"

    .line 124
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/css/Size;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 125
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v13, v20

    .line 126
    .local v13, "msg":Ljava/lang/String;
    move-object/from16 v20, v12

    move-object/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 130
    .end local v12    # "LOGGER":Lsun/util/logging/PlatformLogger;
    .end local v13    # "msg":Ljava/lang/String;
    :cond_2
    move/from16 v20, v10

    if-eqz v20, :cond_9

    move/from16 v20, v11

    if-eqz v20, :cond_9

    const/16 v20, 0x1

    :goto_6
    move/from16 v10, v20

    .line 132
    move-object/from16 v20, v6

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 133
    .local v12, "top":D
    move-object/from16 v20, v7

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 134
    .local v14, "right":D
    move-object/from16 v20, v8

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 135
    .local v16, "bottom":D
    move-object/from16 v20, v9

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 136
    .local v18, "left":D
    new-instance v20, Lcom/sun/javafx/scene/layout/region/Margins;

    move-object/from16 v31, v20

    move-object/from16 v20, v31

    move-object/from16 v21, v31

    move-wide/from16 v22, v12

    move-wide/from16 v24, v14

    move-wide/from16 v26, v16

    move-wide/from16 v28, v18

    move/from16 v30, v10

    invoke-direct/range {v21 .. v30}, Lcom/sun/javafx/scene/layout/region/Margins;-><init>(DDDDZ)V

    move-object/from16 v2, v20

    .end local v2    # "this":Lcom/sun/javafx/scene/layout/region/Margins$Converter;
    return-object v2

    .line 94
    .end local v6    # "topSz":Lcom/sun/javafx/css/Size;
    .end local v7    # "rightSz":Lcom/sun/javafx/css/Size;
    .end local v8    # "bottomSz":Lcom/sun/javafx/css/Size;
    .end local v9    # "leftSz":Lcom/sun/javafx/css/Size;
    .end local v10    # "proportional":Z
    .end local v11    # "unitsMatch":Z
    .end local v12    # "top":D
    .end local v14    # "right":D
    .end local v16    # "bottom":D
    .end local v18    # "left":D
    .restart local v2    # "this":Lcom/sun/javafx/scene/layout/region/Margins$Converter;
    :cond_3
    new-instance v20, Lcom/sun/javafx/css/Size;

    move-object/from16 v31, v20

    move-object/from16 v20, v31

    move-object/from16 v21, v31

    const-wide/16 v22, 0x0

    sget-object v24, Lcom/sun/javafx/css/SizeUnits;->PX:Lcom/sun/javafx/css/SizeUnits;

    invoke-direct/range {v21 .. v24}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    goto/16 :goto_0

    .line 95
    .restart local v6    # "topSz":Lcom/sun/javafx/css/Size;
    :cond_4
    move-object/from16 v20, v6

    goto/16 :goto_1

    .line 96
    .restart local v7    # "rightSz":Lcom/sun/javafx/css/Size;
    :cond_5
    move-object/from16 v20, v6

    goto/16 :goto_2

    .line 97
    .restart local v8    # "bottomSz":Lcom/sun/javafx/css/Size;
    :cond_6
    move-object/from16 v20, v7

    goto/16 :goto_3

    .line 104
    .restart local v9    # "leftSz":Lcom/sun/javafx/css/Size;
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 112
    .restart local v10    # "proportional":Z
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 130
    .restart local v11    # "unitsMatch":Z
    :cond_9
    const/16 v20, 0x0

    goto :goto_6
.end method

.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/Margins$Converter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/layout/region/Margins$Converter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Lcom/sun/javafx/scene/layout/region/Margins;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/Margins$Converter;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/Margins$Converter;
    const-string v1, "MarginsConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/Margins$Converter;
    return-object v0
.end method
