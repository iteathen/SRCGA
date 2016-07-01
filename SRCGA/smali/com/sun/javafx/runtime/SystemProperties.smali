.class public Lcom/sun/javafx/runtime/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# static fields
.field public static final codebase:Ljava/lang/String; = "javafx.application.codebase"

.field private static codebase_value:Ljava/lang/String; = null

.field private static isDebug:Z = false

.field private static final jfxprop_list:Ljava/util/Hashtable;

.field private static final jfxprop_table:[Ljava/lang/String;

.field private static final sysprop_list:Ljava/util/Hashtable;

.field private static final sysprop_table:[Ljava/lang/String;

.field private static final versionResourceName:Ljava/lang/String; = "/com/sun/javafx/runtime/resources/version.properties"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "application.codebase"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "jfx_specific"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "debug"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "javafx.debug"

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/runtime/SystemProperties;->sysprop_table:[Ljava/lang/String;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "application.codebase"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/runtime/SystemProperties;->jfxprop_table:[Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/Hashtable;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sun/javafx/runtime/SystemProperties;->sysprop_list:Ljava/util/Hashtable;

    .line 56
    new-instance v0, Ljava/util/Hashtable;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sun/javafx/runtime/SystemProperties;->jfxprop_list:Ljava/util/Hashtable;

    .line 64
    invoke-static {}, Lcom/sun/javafx/runtime/SystemProperties$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/SystemProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/runtime/SystemProperties;->lambda$static$26()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static addProperties([Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "table":[Ljava/lang/String;
    move v1, p1

    .local v1, "jfx_specific":Z
    move-object v4, v0

    if-nez v4, :cond_0

    .line 139
    .line 152
    :goto_0
    return-void

    .line 143
    :cond_0
    move v4, v1

    if-eqz v4, :cond_1

    .line 144
    sget-object v4, Lcom/sun/javafx/runtime/SystemProperties;->jfxprop_list:Ljava/util/Hashtable;

    move-object v2, v4

    .line 149
    .local v2, "props":Ljava/util/Hashtable;
    :goto_1
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_2
    move v4, v3

    move-object v5, v0

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 150
    move-object v4, v2

    move-object v5, v0

    move v6, v3

    aget-object v5, v5, v6

    move-object v6, v0

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 149
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 146
    .end local v2    # "props":Ljava/util/Hashtable;
    .end local v3    # "i":I
    :cond_1
    sget-object v4, Lcom/sun/javafx/runtime/SystemProperties;->sysprop_list:Ljava/util/Hashtable;

    move-object v2, v4

    .restart local v2    # "props":Ljava/util/Hashtable;
    goto :goto_1

    .line 152
    .restart local v3    # "i":I
    :cond_2
    goto :goto_0
.end method

.method public static clearProperty(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v4, v0

    if-nez v4, :cond_0

    .line 188
    .line 211
    :goto_0
    return-void

    .line 190
    :cond_0
    sget-object v4, Lcom/sun/javafx/runtime/SystemProperties;->sysprop_list:Ljava/util/Hashtable;

    move-object v1, v4

    .line 191
    .local v1, "props":Ljava/util/Hashtable;
    const-string v4, "javafx."

    move-object v2, v4

    .line 194
    .local v2, "prefix":Ljava/lang/String;
    move-object v4, v0

    const-string v5, "javafx."

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    move-object v4, v0

    const-string v5, "javafx."

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 200
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 201
    .local v3, "value":Ljava/lang/String;
    move-object v4, v3

    if-nez v4, :cond_2

    .line 202
    goto :goto_0

    .line 197
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 204
    .restart local v3    # "value":Ljava/lang/String;
    :cond_2
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 207
    move-object v4, v3

    const-string v5, "jfx_specific"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 208
    sget-object v4, Lcom/sun/javafx/runtime/SystemProperties;->jfxprop_list:Ljava/util/Hashtable;

    move-object v1, v4

    .line 209
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 211
    :cond_3
    goto :goto_0
.end method

.method public static getCodebase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/sun/javafx/runtime/SystemProperties;->codebase_value:Ljava/lang/String;

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    sget-object v4, Lcom/sun/javafx/runtime/SystemProperties;->sysprop_list:Ljava/util/Hashtable;

    move-object v1, v4

    .line 156
    .local v1, "props":Ljava/util/Hashtable;
    const-string v4, "javafx."

    move-object v2, v4

    .line 158
    .local v2, "prefix":Ljava/lang/String;
    move-object v4, v0

    if-nez v4, :cond_0

    .line 159
    const/4 v4, 0x0

    move-object v0, v4

    .line 178
    .end local v0    # "key":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 161
    .restart local v0    # "key":Ljava/lang/String;
    :cond_0
    move-object v4, v0

    const-string v5, "javafx."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    move-object v4, v0

    const-string v5, "javafx."

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 166
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 167
    .local v3, "found":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 169
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 164
    .end local v3    # "found":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 174
    .restart local v3    # "found":Ljava/lang/String;
    :cond_3
    move-object v4, v3

    const-string v5, "jfx_specific"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 175
    sget-object v4, Lcom/sun/javafx/runtime/SystemProperties;->jfxprop_list:Ljava/util/Hashtable;

    move-object v1, v4

    .line 176
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    goto :goto_0

    .line 178
    :cond_4
    move-object v4, v3

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method private static getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "toSearch":Ljava/lang/String;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v0

    move-object v2, v4

    .line 101
    .local v2, "s":Ljava/lang/String;
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    move v7, v4

    move v4, v7

    move v5, v7

    move v3, v5

    .local v3, "index":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 102
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 103
    move-object v4, v2

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    move v7, v4

    move v4, v7

    move v5, v7

    move v3, v5

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 104
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 108
    .end local v0    # "toSearch":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 106
    .restart local v0    # "toSearch":Ljava/lang/String;
    :cond_0
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 108
    :cond_1
    const-string v4, "unknown"

    move-object v0, v4

    goto :goto_0
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 247
    sget-boolean v0, Lcom/sun/javafx/runtime/SystemProperties;->isDebug:Z

    return v0
.end method

.method private static synthetic lambda$static$26()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/sun/javafx/runtime/SystemProperties;->sysprop_table:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/javafx/runtime/SystemProperties;->addProperties([Ljava/lang/String;Z)V

    .line 66
    sget-object v0, Lcom/sun/javafx/runtime/SystemProperties;->jfxprop_table:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sun/javafx/runtime/SystemProperties;->addProperties([Ljava/lang/String;Z)V

    .line 67
    invoke-static {}, Lcom/sun/javafx/runtime/SystemProperties;->setVersions()V

    .line 68
    const-string v0, "true"

    const-string v1, "javafx.debug"

    invoke-static {v1}, Lcom/sun/javafx/runtime/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/runtime/SystemProperties;->isDebug:Z

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setCodebase(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "value":Ljava/lang/String;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 256
    const-string v1, ""

    move-object v0, v1

    .line 257
    :cond_0
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/runtime/SystemProperties;->codebase_value:Ljava/lang/String;

    .line 258
    const-string v1, "javafx.application.codebase"

    move-object v2, v0

    invoke-static {v1, v2}, Lcom/sun/javafx/runtime/SystemProperties;->setFXProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public static setFXProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    sget-object v5, Lcom/sun/javafx/runtime/SystemProperties;->sysprop_list:Ljava/util/Hashtable;

    move-object v2, v5

    .line 224
    .local v2, "props":Ljava/util/Hashtable;
    const-string v5, "javafx."

    move-object v3, v5

    .line 227
    .local v3, "prefix":Ljava/lang/String;
    move-object v5, v0

    const-string v6, "javafx."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 228
    move-object v5, v0

    const-string v6, "javafx."

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 230
    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 232
    .local v4, "k":Ljava/lang/String;
    move-object v5, v4

    if-nez v5, :cond_1

    .line 233
    move-object v5, v2

    move-object v6, v0

    const-string v7, "jfx_specific"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 234
    sget-object v5, Lcom/sun/javafx/runtime/SystemProperties;->jfxprop_list:Ljava/util/Hashtable;

    move-object v2, v5

    .line 235
    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 244
    .end local v4    # "k":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 236
    .restart local v4    # "k":Ljava/lang/String;
    :cond_1
    move-object v5, v4

    const-string v6, "jfx_specific"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 238
    sget-object v5, Lcom/sun/javafx/runtime/SystemProperties;->jfxprop_list:Ljava/util/Hashtable;

    move-object v2, v5

    .line 239
    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 240
    const-string v5, "javafx.application.codebase"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "javafx."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 241
    move-object v5, v1

    sput-object v5, Lcom/sun/javafx/runtime/SystemProperties;->codebase_value:Ljava/lang/String;

    goto :goto_0
.end method

.method private static setVersions()V
    .locals 10

    .prologue
    .line 78
    const-class v5, Lcom/sun/javafx/runtime/SystemProperties;

    const-string v6, "/com/sun/javafx/runtime/resources/version.properties"

    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    move-object v1, v5

    .line 81
    .local v1, "is":Ljava/io/InputStream;
    move-object v5, v1

    :try_start_0
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v5

    move v0, v5

    .line 83
    .local v0, "size":I
    move v5, v0

    new-array v5, v5, [B

    move-object v2, v5

    .line 84
    .local v2, "b":[B
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v3, v5

    .line 85
    .local v3, "n":I
    new-instance v5, Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    const-string v8, "utf-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v4, v5

    .line 86
    .local v4, "inStr":Ljava/lang/String;
    const-string v5, "javafx.version"

    move-object v6, v4

    const-string v7, "release="

    .line 87
    invoke-static {v6, v7}, Lcom/sun/javafx/runtime/SystemProperties;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 86
    invoke-static {v5, v6}, Lcom/sun/javafx/runtime/SystemProperties;->setFXProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v5, "javafx.runtime.version"

    move-object v6, v4

    const-string v7, "full="

    .line 90
    invoke-static {v6, v7}, Lcom/sun/javafx/runtime/SystemProperties;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-static {v5, v6}, Lcom/sun/javafx/runtime/SystemProperties;->setFXProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .end local v0    # "size":I
    .end local v2    # "b":[B
    .end local v3    # "n":I
    .end local v4    # "inStr":Ljava/lang/String;
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v5

    move-object v2, v5

    goto :goto_0
.end method
