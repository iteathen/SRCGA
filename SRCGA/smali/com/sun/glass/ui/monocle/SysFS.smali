.class Lcom/sun/glass/ui/monocle/SysFS;
.super Ljava/lang/Object;
.source "SysFS.java"


# static fields
.field static final CURSOR_BLINK:Ljava/lang/String; = "/sys/devices/virtual/graphics/fbcon/cursor_blink"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/SysFS;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readCapabilities(Ljava/io/File;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    move-object/from16 v1, p0

    .local v1, "sysPath":Ljava/io/File;
    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object v2, v11

    .line 49
    .local v2, "capsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/BitSet;>;"
    new-instance v11, Ljava/io/File;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v1

    const-string v14, "device/capabilities"

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    move-object v3, v11

    .line 50
    .local v3, "capsFiles":[Ljava/io/File;
    move-object v11, v3

    if-nez v11, :cond_0

    .line 51
    move-object v11, v2

    move-object v1, v11

    .line 80
    .end local v1    # "sysPath":Ljava/io/File;
    :goto_0
    return-object v1

    .line 53
    .restart local v1    # "sysPath":Ljava/io/File;
    :cond_0
    const/4 v11, 0x0

    move v4, v11

    .local v4, "i":I
    :goto_1
    move v11, v4

    move-object v12, v3

    array-length v12, v12

    if-ge v11, v12, :cond_6

    .line 55
    :try_start_0
    new-instance v11, Ljava/io/BufferedReader;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    new-instance v13, Ljava/io/FileReader;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v3

    move/from16 v16, v4

    aget-object v15, v15, v16

    invoke-direct {v14, v15}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v11

    .line 56
    .local v5, "r":Ljava/io/BufferedReader;
    move-object v11, v5

    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 57
    .local v6, "s":Ljava/lang/String;
    move-object v11, v5

    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 58
    move-object v11, v6

    if-nez v11, :cond_1

    .line 59
    .line 53
    .end local v5    # "r":Ljava/io/BufferedReader;
    .end local v6    # "s":Ljava/lang/String;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 61
    .restart local v5    # "r":Ljava/io/BufferedReader;
    .restart local v6    # "s":Ljava/lang/String;
    :cond_1
    move-object v11, v6

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 62
    .local v7, "elements":[Ljava/lang/String;
    move-object v11, v7

    if-nez v11, :cond_2

    .line 63
    goto :goto_2

    .line 65
    :cond_2
    move-object v11, v7

    array-length v11, v11

    invoke-static {}, Lcom/sun/glass/ui/monocle/LinuxArch;->is64Bit()Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0x8

    :goto_3
    mul-int/2addr v11, v12

    new-array v11, v11, [B

    move-object v8, v11

    .line 66
    .local v8, "b":[B
    move-object v11, v8

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object v9, v11

    .line 67
    .local v9, "bb":Ljava/nio/ByteBuffer;
    move-object v11, v9

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 68
    move-object v11, v7

    array-length v11, v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v10, v11

    .local v10, "j":I
    :goto_4
    move v11, v10

    if-ltz v11, :cond_5

    .line 69
    invoke-static {}, Lcom/sun/glass/ui/monocle/LinuxArch;->is64Bit()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 70
    move-object v11, v9

    move-object v12, v7

    move v13, v10

    aget-object v12, v12, v13

    const/16 v13, 0x10

    invoke-static {v12, v13}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 68
    :goto_5
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 65
    .end local v8    # "b":[B
    .end local v9    # "bb":Ljava/nio/ByteBuffer;
    .end local v10    # "j":I
    :cond_3
    const/4 v12, 0x4

    goto :goto_3

    .line 72
    .restart local v8    # "b":[B
    .restart local v9    # "bb":Ljava/nio/ByteBuffer;
    .restart local v10    # "j":I
    :cond_4
    move-object v11, v9

    move-object v12, v7

    move v13, v10

    aget-object v12, v12, v13

    const/16 v13, 0x10

    invoke-static {v12, v13}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    goto :goto_5

    .line 75
    :cond_5
    move-object v11, v2

    move-object v12, v3

    move v13, v4

    aget-object v12, v12, v13

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    move-object v13, v8

    invoke-static {v13}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 78
    goto :goto_2

    .line 76
    .end local v5    # "r":Ljava/io/BufferedReader;
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "elements":[Ljava/lang/String;
    .end local v8    # "b":[B
    .end local v9    # "bb":Ljava/nio/ByteBuffer;
    .end local v10    # "j":I
    :catch_0
    move-exception v11

    :goto_6
    move-object v5, v11

    .line 77
    .local v5, "e":Ljava/lang/Exception;
    move-object v11, v5

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 80
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6
    move-object v11, v2

    move-object v1, v11

    goto/16 :goto_0

    .line 76
    :catch_1
    move-exception v11

    goto :goto_6
.end method

.method static readInt(Ljava/lang/String;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "location":Ljava/lang/String;
    new-instance v4, Ljava/io/BufferedReader;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/io/FileReader;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    .line 166
    .local v1, "r":Ljava/io/BufferedReader;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 167
    .local v2, "s":Ljava/lang/String;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 169
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 170
    move-object v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    .end local v0    # "location":Ljava/lang/String;
    return v0

    .line 172
    .restart local v0    # "location":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/io/IOException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not contain an integer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 175
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/io/IOException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not contain an integer (\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static readInts(Ljava/lang/String;I)[I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "location":Ljava/lang/String;
    move v1, p1

    .local v1, "expectedLength":I
    new-instance v7, Ljava/io/BufferedReader;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/io/FileReader;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v0

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v7

    .line 136
    .local v2, "r":Ljava/io/BufferedReader;
    move-object v7, v2

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 137
    .local v3, "s":Ljava/lang/String;
    move-object v7, v2

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 138
    move-object v7, v3

    if-eqz v7, :cond_2

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 139
    move-object v7, v3

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 141
    .local v4, "elements":[Ljava/lang/String;
    move v7, v1

    if-eqz v7, :cond_0

    move-object v7, v4

    :try_start_0
    array-length v7, v7

    move v8, v1

    if-ne v7, v8, :cond_2

    .line 142
    :cond_0
    move-object v7, v4

    array-length v7, v7

    new-array v7, v7, [I

    move-object v5, v7

    .line 143
    .local v5, "xs":[I
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_0
    move v7, v6

    move-object v8, v5

    array-length v8, v8

    if-ge v7, v8, :cond_1

    .line 144
    move-object v7, v5

    move v8, v6

    move-object v9, v4

    move v10, v6

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v7, v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 146
    :cond_1
    move-object v7, v5

    move-object v0, v7

    .line 157
    .end local v0    # "location":Ljava/lang/String;
    .end local v4    # "elements":[Ljava/lang/String;
    .end local v5    # "xs":[I
    .end local v6    # "i":I
    :goto_1
    return-object v0

    .line 150
    .line 152
    .restart local v0    # "location":Ljava/lang/String;
    :cond_2
    :goto_2
    move v7, v1

    if-eqz v7, :cond_3

    .line 153
    new-instance v7, Ljava/io/IOException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Expected to find "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " integers in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but found \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 148
    .restart local v4    # "elements":[Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v5, v7

    goto :goto_2

    .line 157
    .end local v4    # "elements":[Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    new-array v7, v7, [I

    move-object v0, v7

    goto :goto_1
.end method

.method static readUEvent(Ljava/io/File;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "sysPath":Ljava/io/File;
    new-instance v6, Ljava/util/HashMap;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object v1, v6

    .line 85
    .local v1, "uevent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/io/File;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    const-string v9, "device/uevent"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v6

    .line 87
    .local v2, "f":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/io/FileReader;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v2

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v6

    .line 88
    .local v3, "r":Ljava/io/BufferedReader;
    :goto_0
    move-object v6, v3

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v4, v7

    .local v4, "line":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 89
    move-object v6, v4

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 90
    .local v5, "i":I
    move v6, v5

    if-ltz v6, :cond_0

    .line 91
    move-object v6, v1

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v5

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 93
    :cond_0
    goto :goto_0

    .line 96
    .line 97
    .end local v3    # "r":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_1
    :goto_1
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "sysPath":Ljava/io/File;
    return-object v0

    .line 94
    .restart local v0    # "sysPath":Ljava/io/File;
    :catch_0
    move-exception v6

    move-object v3, v6

    goto :goto_1
.end method

.method static triggerUdevNotification(Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "sysClass":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/sys/class/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    move-object v1, v9

    .line 103
    .local v1, "devices":[Ljava/io/File;
    const-string v9, "change"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    move-object v2, v9

    .line 104
    .local v2, "action":[B
    move-object v9, v1

    move-object v3, v9

    move-object v9, v3

    array-length v9, v9

    move v4, v9

    const/4 v9, 0x0

    move v5, v9

    :goto_0
    move v9, v5

    move v10, v4

    if-ge v9, v10, :cond_1

    move-object v9, v3

    move v10, v5

    aget-object v9, v9, v10

    move-object v6, v9

    .line 105
    .local v6, "device":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v6

    const-string v12, "uevent"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v9

    .line 106
    .local v7, "uevent":Ljava/io/File;
    move-object v9, v7

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 108
    move-object v9, v7

    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    move-object v10, v2

    invoke-static {v9, v10}, Lcom/sun/glass/ui/monocle/SysFS;->write(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 104
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 110
    .local v8, "e":Ljava/io/IOException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Udev: Failed to write to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "      Check that you have permission to access input devices"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    move-object v9, v8

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Permission denied"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 113
    move-object v9, v8

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 118
    .end local v6    # "device":Ljava/io/File;
    .end local v7    # "uevent":Ljava/io/File;
    .end local v8    # "e":Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method static write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "location":Ljava/lang/String;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sun/glass/ui/monocle/SysFS;->write(Ljava/lang/String;[B)V

    .line 131
    return-void
.end method

.method static write(Ljava/lang/String;[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "location":Ljava/lang/String;
    move-object v1, p1

    .local v1, "value":[B
    new-instance v4, Ljava/io/FileOutputStream;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 123
    .local v2, "out":Ljava/io/FileOutputStream;
    move-object v4, v2

    move-object v5, v1

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 126
    .line 127
    return-void

    .line 125
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    move-object v4, v3

    throw v4
.end method
