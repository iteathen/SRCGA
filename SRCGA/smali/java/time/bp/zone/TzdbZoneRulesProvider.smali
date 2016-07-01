.class public final Ljava/time/bp/zone/TzdbZoneRulesProvider;
.super Ljava/time/bp/zone/ZoneRulesProvider;
.source "TzdbZoneRulesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;
    }
.end annotation


# instance fields
.field private loadedUrls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final regionIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final versions:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesProvider;
    move-object v1, v0

    invoke-direct {v1}, Ljava/time/bp/zone/ZoneRulesProvider;-><init>()V

    .line 68
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v1, Ljava/time/bp/zone/TzdbZoneRulesProvider;->regionIds:Ljava/util/Set;

    .line 72
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/ConcurrentSkipListMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v2, v1, Ljava/time/bp/zone/TzdbZoneRulesProvider;->versions:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 77
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v1, Ljava/time/bp/zone/TzdbZoneRulesProvider;->loadedUrls:Ljava/util/Set;

    .line 87
    move-object v1, v0

    const-class v2, Ljava/time/bp/zone/ZoneRulesProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/bp/zone/TzdbZoneRulesProvider;->load(Ljava/lang/ClassLoader;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Ljava/time/bp/zone/ZoneRulesException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "No time-zone rules found for \'TZDB\'"

    invoke-direct {v2, v3}, Ljava/time/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    return-void
.end method

.method private load(Ljava/net/URL;)Ljava/lang/Iterable;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    move-object/from16 v2, p0

    .local v2, "this":Ljava/time/bp/zone/TzdbZoneRulesProvider;
    move-object/from16 v3, p1

    .local v3, "url":Ljava/net/URL;
    const/16 v21, 0x0

    move-object/from16 v4, v21

    .line 160
    .local v4, "in":Ljava/io/InputStream;
    move-object/from16 v21, v3

    :try_start_0
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v4, v21

    .line 161
    new-instance v21, Ljava/io/DataInputStream;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v4

    invoke-direct/range {v22 .. v23}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v5, v21

    .line 162
    .local v5, "dis":Ljava/io/DataInputStream;
    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readByte()B

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 163
    new-instance v21, Ljava/io/StreamCorruptedException;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    const-string v23, "File format not recognised"

    invoke-direct/range {v22 .. v23}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v5    # "dis":Ljava/io/DataInputStream;
    :catchall_0
    move-exception v21

    move-object/from16 v20, v21

    move-object/from16 v21, v4

    if-eqz v21, :cond_0

    .line 207
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    :cond_0
    move-object/from16 v21, v20

    throw v21

    .line 166
    .restart local v5    # "dis":Ljava/io/DataInputStream;
    :cond_1
    move-object/from16 v21, v5

    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v6, v21

    .line 167
    .local v6, "groupId":Ljava/lang/String;
    const-string v21, "TZDB"

    move-object/from16 v22, v6

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 168
    new-instance v21, Ljava/io/StreamCorruptedException;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    const-string v23, "File format not recognised"

    invoke-direct/range {v22 .. v23}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 171
    :cond_2
    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readShort()S

    move-result v21

    move/from16 v7, v21

    .line 172
    .local v7, "versionCount":I
    move/from16 v21, v7

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v8, v21

    .line 173
    .local v8, "versionArray":[Ljava/lang/String;
    const/16 v21, 0x0

    move/from16 v9, v21

    .local v9, "i":I
    :goto_0
    move/from16 v21, v9

    move/from16 v22, v7

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 174
    move-object/from16 v21, v8

    move/from16 v22, v9

    move-object/from16 v23, v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    .line 173
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 177
    :cond_3
    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readShort()S

    move-result v21

    move/from16 v9, v21

    .line 178
    .local v9, "regionCount":I
    move/from16 v21, v9

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v10, v21

    .line 179
    .local v10, "regionArray":[Ljava/lang/String;
    const/16 v21, 0x0

    move/from16 v11, v21

    .local v11, "i":I
    :goto_1
    move/from16 v21, v11

    move/from16 v22, v9

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 180
    move-object/from16 v21, v10

    move/from16 v22, v11

    move-object/from16 v23, v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    .line 179
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 182
    :cond_4
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Ljava/time/bp/zone/TzdbZoneRulesProvider;->regionIds:Ljava/util/Set;

    move-object/from16 v21, v0

    move-object/from16 v22, v10

    invoke-static/range {v22 .. v22}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v21

    .line 184
    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readShort()S

    move-result v21

    move/from16 v11, v21

    .line 185
    .local v11, "ruleCount":I
    move/from16 v21, v11

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v12, v21

    .line 186
    .local v12, "ruleArray":[Ljava/lang/Object;
    const/16 v21, 0x0

    move/from16 v13, v21

    .local v13, "i":I
    :goto_2
    move/from16 v21, v13

    move/from16 v22, v11

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 187
    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readShort()S

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v21, v0

    move-object/from16 v14, v21

    .line 188
    .local v14, "bytes":[B
    move-object/from16 v21, v5

    move-object/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Ljava/io/DataInputStream;->readFully([B)V

    .line 189
    move-object/from16 v21, v12

    move/from16 v22, v13

    move-object/from16 v23, v14

    aput-object v23, v21, v22

    .line 186
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 191
    .end local v14    # "bytes":[B
    :cond_5
    new-instance v21, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v12

    invoke-direct/range {v22 .. v23}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>([Ljava/lang/Object;)V

    move-object/from16 v13, v21

    .line 193
    .local v13, "ruleData":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    new-instance v21, Ljava/util/HashSet;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move/from16 v23, v7

    invoke-direct/range {v22 .. v23}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v14, v21

    .line 194
    .local v14, "versionSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;>;"
    const/16 v21, 0x0

    move/from16 v15, v21

    .local v15, "i":I
    :goto_3
    move/from16 v21, v15

    move/from16 v22, v7

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 195
    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readShort()S

    move-result v21

    move/from16 v16, v21

    .line 196
    .local v16, "versionRegionCount":I
    move/from16 v21, v16

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v17, v21

    .line 197
    .local v17, "versionRegionArray":[Ljava/lang/String;
    move/from16 v21, v16

    move/from16 v0, v21

    new-array v0, v0, [S

    move-object/from16 v21, v0

    move-object/from16 v18, v21

    .line 198
    .local v18, "versionRulesArray":[S
    const/16 v21, 0x0

    move/from16 v19, v21

    .local v19, "j":I
    :goto_4
    move/from16 v21, v19

    move/from16 v22, v16

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 199
    move-object/from16 v21, v17

    move/from16 v22, v19

    move-object/from16 v23, v10

    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Ljava/io/DataInputStream;->readShort()S

    move-result v24

    aget-object v23, v23, v24

    aput-object v23, v21, v22

    .line 200
    move-object/from16 v21, v18

    move/from16 v22, v19

    move-object/from16 v23, v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->readShort()S

    move-result v23

    aput-short v23, v21, v22

    .line 198
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 202
    :cond_6
    move-object/from16 v21, v14

    new-instance v22, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    move-object/from16 v24, v8

    move/from16 v25, v15

    aget-object v24, v24, v25

    move-object/from16 v25, v17

    move-object/from16 v26, v18

    move-object/from16 v27, v13

    invoke-direct/range {v23 .. v27}, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;-><init>(Ljava/lang/String;[Ljava/lang/String;[SLjava/util/concurrent/atomic/AtomicReferenceArray;)V

    invoke-interface/range {v21 .. v22}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v21

    .line 194
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 204
    .end local v16    # "versionRegionCount":I
    .end local v17    # "versionRegionArray":[Ljava/lang/String;
    .end local v18    # "versionRulesArray":[S
    .end local v19    # "j":I
    :cond_7
    move-object/from16 v21, v14

    move-object/from16 v15, v21

    .line 206
    .end local v15    # "i":I
    move-object/from16 v21, v4

    if-eqz v21, :cond_8

    .line 207
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    :cond_8
    move-object/from16 v21, v15

    move-object/from16 v2, v21

    .end local v2    # "this":Ljava/time/bp/zone/TzdbZoneRulesProvider;
    return-object v2
.end method

.method private load(Ljava/lang/ClassLoader;)Z
    .locals 13

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesProvider;
    move-object v1, p1

    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const/4 v8, 0x0

    move v2, v8

    .line 130
    .local v2, "updated":Z
    const/4 v8, 0x0

    move-object v3, v8

    .line 132
    .local v3, "url":Ljava/net/URL;
    move-object v8, v1

    :try_start_0
    const-string v9, "org/threeten/bp/TZDB.dat"

    invoke-virtual {v8, v9}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v8

    move-object v4, v8

    .line 133
    .local v4, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :cond_0
    :goto_0
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 134
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/URL;

    move-object v3, v8

    .line 135
    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/TzdbZoneRulesProvider;->loadedUrls:Ljava/util/Set;

    move-object v9, v3

    invoke-virtual {v9}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 136
    move-object v8, v0

    move-object v9, v3

    invoke-direct {v8, v9}, Ljava/time/bp/zone/TzdbZoneRulesProvider;->load(Ljava/net/URL;)Ljava/lang/Iterable;

    move-result-object v8

    move-object v5, v8

    .line 137
    .local v5, "loadedVersions":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;>;"
    move-object v8, v5

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_1
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;

    move-object v7, v8

    .line 138
    .local v7, "loadedVersion":Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;
    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/TzdbZoneRulesProvider;->versions:Ljava/util/concurrent/ConcurrentNavigableMap;

    move-object v9, v7

    invoke-static {v9}, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;->access$000(Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v7

    invoke-interface {v8, v9, v10}, Ljava/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 139
    new-instance v8, Ljava/time/bp/zone/ZoneRulesException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Data already loaded for TZDB time-zone rules version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v7

    invoke-static {v11}, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;->access$000(Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/time/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v4    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v5    # "loadedVersions":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;>;"
    .end local v7    # "loadedVersion":Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 146
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v8, Ljava/time/bp/zone/ZoneRulesException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load TZDB time-zone rules: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v4

    invoke-direct {v9, v10, v11}, Ljava/time/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 141
    .local v4, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .restart local v5    # "loadedVersions":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;>;"
    .restart local v7    # "loadedVersion":Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;
    :cond_1
    goto :goto_1

    .line 142
    .end local v7    # "loadedVersion":Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;
    :cond_2
    const/4 v8, 0x1

    move v2, v8

    .line 143
    goto/16 :goto_0

    .line 147
    .line 148
    .end local v5    # "loadedVersions":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;>;"
    :cond_3
    move v8, v2

    move v0, v8

    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesProvider;
    return v0
.end method


# virtual methods
.method protected provideRules(Ljava/lang/String;Z)Ljava/time/bp/zone/ZoneRules;
    .locals 9

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesProvider;
    move-object v1, p1

    .local v1, "zoneId":Ljava/lang/String;
    move v2, p2

    .local v2, "forCaching":Z
    move-object v4, v1

    const-string v5, "zoneId"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 101
    move-object v4, v0

    iget-object v4, v4, Ljava/time/bp/zone/TzdbZoneRulesProvider;->versions:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentNavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;->getRules(Ljava/lang/String;)Ljava/time/bp/zone/ZoneRules;

    move-result-object v4

    move-object v3, v4

    .line 102
    .local v3, "rules":Ljava/time/bp/zone/ZoneRules;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 103
    new-instance v4, Ljava/time/bp/zone/ZoneRulesException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown time-zone ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 105
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesProvider;
    return-object v0
.end method

.method protected provideVersions(Ljava/lang/String;)Ljava/util/NavigableMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/bp/zone/ZoneRules;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesProvider;
    move-object v1, p1

    .local v1, "zoneId":Ljava/lang/String;
    new-instance v6, Ljava/util/TreeMap;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    move-object v2, v6

    .line 111
    .local v2, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;>;"
    move-object v6, v0

    iget-object v6, v6, Ljava/time/bp/zone/TzdbZoneRulesProvider;->versions:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v6}, Ljava/util/concurrent/ConcurrentNavigableMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;

    move-object v4, v6

    .line 112
    .local v4, "version":Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;->getRules(Ljava/lang/String;)Ljava/time/bp/zone/ZoneRules;

    move-result-object v6

    move-object v5, v6

    .line 113
    .local v5, "rules":Ljava/time/bp/zone/ZoneRules;
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 114
    move-object v6, v2

    move-object v7, v4

    invoke-static {v7}, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;->access$000(Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 116
    :cond_0
    goto :goto_0

    .line 117
    .end local v4    # "version":Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;
    .end local v5    # "rules":Ljava/time/bp/zone/ZoneRules;
    :cond_1
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesProvider;
    return-object v0
.end method

.method protected provideZoneIds()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesProvider;
    new-instance v1, Ljava/util/HashSet;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/TzdbZoneRulesProvider;->regionIds:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesProvider;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesProvider;
    const-string v1, "TZDB"

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesProvider;
    return-object v0
.end method
