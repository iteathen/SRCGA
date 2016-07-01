.class public Lorg/apache/xerces/util/URI;
.super Ljava/lang/Object;
.source "URI.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/URI$MalformedURIException;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MARK_CHARACTERS:Ljava/lang/String; = "-_.!~*\'()"

.field private static final RESERVED_CHARACTERS:Ljava/lang/String; = ";/?:@&=+$,[]"

.field private static final SCHEME_CHARACTERS:Ljava/lang/String; = "+-."

.field private static final USERINFO_CHARACTERS:Ljava/lang/String; = ";:&=+$,"


# instance fields
.field private m_fragment:Ljava/lang/String;

.field private m_host:Ljava/lang/String;

.field private m_path:Ljava/lang/String;

.field private m_port:I

.field private m_queryString:Ljava/lang/String;

.field private m_scheme:Ljava/lang/String;

.field private m_userinfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/xerces/util/URI;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 143
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 146
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 149
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 152
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lorg/apache/xerces/util/URI;->m_port:I

    .line 155
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 159
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 162
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, p1

    .local v1, "p_uriSpec":Ljava/lang/String;
    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Lorg/apache/xerces/util/URI;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/URI;-><init>(Lorg/apache/xerces/util/URI;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, p1

    .local v1, "p_scheme":Ljava/lang/String;
    move-object v2, p2

    .local v2, "p_schemeSpecificPart":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 143
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 146
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 149
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 152
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lorg/apache/xerces/util/URI;->m_port:I

    .line 155
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 159
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 162
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 231
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 232
    :cond_0
    new-instance v3, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Cannot construct URI with null/empty scheme!"

    invoke-direct {v4, v5}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    :cond_1
    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 236
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 237
    :cond_2
    new-instance v3, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Cannot construct URI with null/empty scheme-specific part!"

    invoke-direct {v4, v5}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 240
    :cond_3
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/URI;->setScheme(Ljava/lang/String;)V

    .line 241
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/URI;->setPath(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, p1

    .local v1, "p_scheme":Ljava/lang/String;
    move-object v2, p2

    .local v2, "p_userinfo":Ljava/lang/String;
    move-object v3, p3

    .local v3, "p_host":Ljava/lang/String;
    move/from16 v4, p4

    .local v4, "p_port":I
    move-object/from16 v5, p5

    .local v5, "p_path":Ljava/lang/String;
    move-object/from16 v6, p6

    .local v6, "p_queryString":Ljava/lang/String;
    move-object/from16 v7, p7

    .local v7, "p_fragment":Ljava/lang/String;
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 143
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 146
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 149
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 152
    move-object v8, v0

    const/4 v9, -0x1

    iput v9, v8, Lorg/apache/xerces/util/URI;->m_port:I

    .line 155
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 159
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 162
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 300
    move-object v8, v1

    if-eqz v8, :cond_0

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 301
    :cond_0
    new-instance v8, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "Scheme is required!"

    invoke-direct {v9, v10}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 304
    :cond_1
    move-object v8, v3

    if-nez v8, :cond_3

    .line 305
    move-object v8, v2

    if-eqz v8, :cond_2

    .line 306
    new-instance v8, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "Userinfo may not be specified if host is not specified!"

    invoke-direct {v9, v10}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 309
    :cond_2
    move v8, v4

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 310
    new-instance v8, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "Port may not be specified if host is not specified!"

    invoke-direct {v9, v10}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 315
    :cond_3
    move-object v8, v5

    if-eqz v8, :cond_5

    .line 316
    move-object v8, v5

    const/16 v9, 0x3f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    move-object v8, v6

    if-eqz v8, :cond_4

    .line 317
    new-instance v8, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "Query string cannot be specified in path and query string!"

    invoke-direct {v9, v10}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 321
    :cond_4
    move-object v8, v5

    const/16 v9, 0x23

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    move-object v8, v7

    if-eqz v8, :cond_5

    .line 322
    new-instance v8, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "Fragment cannot be specified in both the path and fragment!"

    invoke-direct {v9, v10}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 327
    :cond_5
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/URI;->setScheme(Ljava/lang/String;)V

    .line 328
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/URI;->setHost(Ljava/lang/String;)V

    .line 329
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/URI;->setPort(I)V

    .line 330
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/URI;->setUserinfo(Ljava/lang/String;)V

    .line 331
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/URI;->setPath(Ljava/lang/String;)V

    .line 332
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/URI;->setQueryString(Ljava/lang/String;)V

    .line 333
    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/URI;->setFragment(Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, p1

    .local v1, "p_scheme":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "p_host":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "p_path":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "p_queryString":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "p_fragment":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x0

    move-object v9, v2

    const/4 v10, -0x1

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    invoke-direct/range {v6 .. v13}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/URI;)V
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, p1

    .local v1, "p_other":Lorg/apache/xerces/util/URI;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 143
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 146
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 149
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 152
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lorg/apache/xerces/util/URI;->m_port:I

    .line 155
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 159
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 162
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 179
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/URI;->initialize(Lorg/apache/xerces/util/URI;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/URI;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, p1

    .local v1, "p_base":Lorg/apache/xerces/util/URI;
    move-object v2, p2

    .local v2, "p_uriSpec":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 143
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 146
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 149
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 152
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lorg/apache/xerces/util/URI;->m_port:I

    .line 155
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 159
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 162
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 214
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/util/URI;->initialize(Lorg/apache/xerces/util/URI;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method private initialize(Lorg/apache/xerces/util/URI;)V
    .locals 4

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, p1

    .local v1, "p_other":Lorg/apache/xerces/util/URI;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 343
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/util/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 344
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/util/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 345
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/util/URI;->getPort()I

    move-result v3

    iput v3, v2, Lorg/apache/xerces/util/URI;->m_port:I

    .line 346
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 347
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/util/URI;->getQueryString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 348
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 349
    return-void
.end method

.method private initialize(Lorg/apache/xerces/util/URI;Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 369
    move-object/from16 v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object/from16 v1, p1

    .local v1, "p_base":Lorg/apache/xerces/util/URI;
    move-object/from16 v2, p2

    .local v2, "p_uriSpec":Ljava/lang/String;
    move-object v14, v1

    if-nez v14, :cond_1

    move-object v14, v2

    if-eqz v14, :cond_0

    move-object v14, v2

    .line 370
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_1

    .line 371
    :cond_0
    new-instance v14, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const-string v16, "Cannot initialize URI with empty parameters."

    invoke-direct/range {v15 .. v16}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 376
    :cond_1
    move-object v14, v2

    if-eqz v14, :cond_2

    move-object v14, v2

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_3

    .line 377
    :cond_2
    move-object v14, v0

    move-object v15, v1

    invoke-direct {v14, v15}, Lorg/apache/xerces/util/URI;->initialize(Lorg/apache/xerces/util/URI;)V

    .line 378
    .line 548
    :goto_0
    return-void

    .line 381
    :cond_3
    move-object v14, v2

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    move-object v3, v14

    .line 382
    .local v3, "uriSpec":Ljava/lang/String;
    move-object v14, v3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    move v4, v14

    .line 383
    .local v4, "uriSpecLen":I
    const/4 v14, 0x0

    move v5, v14

    .line 388
    .local v5, "index":I
    move-object v14, v3

    const/16 v15, 0x3a

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    move v6, v14

    .line 389
    .local v6, "colonIdx":I
    move-object v14, v3

    const/16 v15, 0x2f

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    move v7, v14

    .line 390
    .local v7, "slashIdx":I
    move-object v14, v3

    const/16 v15, 0x3f

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    move v8, v14

    .line 391
    .local v8, "queryIdx":I
    move-object v14, v3

    const/16 v15, 0x23

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    move v9, v14

    .line 393
    .local v9, "fragmentIdx":I
    move v14, v6

    const/4 v15, 0x2

    if-lt v14, v15, :cond_6

    move v14, v6

    move v15, v7

    if-le v14, v15, :cond_4

    move v14, v7

    const/4 v15, -0x1

    if-ne v14, v15, :cond_6

    :cond_4
    move v14, v6

    move v15, v8

    if-le v14, v15, :cond_5

    move v14, v8

    const/4 v15, -0x1

    if-ne v14, v15, :cond_6

    :cond_5
    move v14, v6

    move v15, v9

    if-le v14, v15, :cond_7

    move v14, v9

    const/4 v15, -0x1

    if-eq v14, v15, :cond_7

    .line 398
    :cond_6
    move-object v14, v1

    if-nez v14, :cond_8

    move v14, v9

    if-eqz v14, :cond_8

    .line 399
    new-instance v14, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const-string v16, "No scheme found in URI."

    invoke-direct/range {v15 .. v16}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 403
    :cond_7
    move-object v14, v0

    move-object v15, v3

    invoke-direct {v14, v15}, Lorg/apache/xerces/util/URI;->initializeScheme(Ljava/lang/String;)V

    .line 404
    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move v5, v14

    .line 408
    :cond_8
    move v14, v5

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move v15, v4

    if-ge v14, v15, :cond_a

    move-object v14, v3

    move v15, v5

    .line 409
    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "//"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 410
    add-int/lit8 v5, v5, 0x2

    .line 411
    move v14, v5

    move v10, v14

    .line 414
    .local v10, "startPos":I
    const/4 v14, 0x0

    move v11, v14

    .line 415
    .local v11, "testChar":C
    :goto_1
    move v14, v5

    move v15, v4

    if-ge v14, v15, :cond_9

    .line 416
    move-object v14, v3

    move v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move v11, v14

    .line 417
    move v14, v11

    const/16 v15, 0x2f

    if-eq v14, v15, :cond_9

    move v14, v11

    const/16 v15, 0x3f

    if-eq v14, v15, :cond_9

    move v14, v11

    const/16 v15, 0x23

    if-ne v14, v15, :cond_c

    .line 418
    .line 425
    :cond_9
    move v14, v5

    move v15, v10

    if-le v14, v15, :cond_d

    .line 426
    move-object v14, v0

    move-object v15, v3

    move/from16 v16, v10

    move/from16 v17, v5

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/apache/xerces/util/URI;->initializeAuthority(Ljava/lang/String;)V

    .line 433
    .end local v10    # "startPos":I
    .end local v11    # "testChar":C
    :cond_a
    :goto_2
    move-object v14, v0

    move-object v15, v3

    move/from16 v16, v5

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/apache/xerces/util/URI;->initializePath(Ljava/lang/String;)V

    .line 440
    move-object v14, v1

    if-eqz v14, :cond_19

    .line 449
    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_e

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-nez v14, :cond_e

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v14, :cond_e

    .line 451
    move-object v14, v0

    move-object v15, v1

    invoke-virtual {v15}, Lorg/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 452
    move-object v14, v0

    move-object v15, v1

    invoke-virtual {v15}, Lorg/apache/xerces/util/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 453
    move-object v14, v0

    move-object v15, v1

    invoke-virtual {v15}, Lorg/apache/xerces/util/URI;->getHost()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 454
    move-object v14, v0

    move-object v15, v1

    invoke-virtual {v15}, Lorg/apache/xerces/util/URI;->getPort()I

    move-result v15

    iput v15, v14, Lorg/apache/xerces/util/URI;->m_port:I

    .line 455
    move-object v14, v0

    move-object v15, v1

    invoke-virtual {v15}, Lorg/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 457
    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-nez v14, :cond_b

    .line 458
    move-object v14, v0

    move-object v15, v1

    invoke-virtual {v15}, Lorg/apache/xerces/util/URI;->getQueryString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 460
    :cond_b
    goto/16 :goto_0

    .line 420
    .restart local v10    # "startPos":I
    .restart local v11    # "testChar":C
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 429
    :cond_d
    move-object v14, v0

    const-string v15, ""

    iput-object v15, v14, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    goto :goto_2

    .line 465
    .end local v10    # "startPos":I
    .end local v11    # "testChar":C
    :cond_e
    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-nez v14, :cond_f

    .line 466
    move-object v14, v0

    move-object v15, v1

    invoke-virtual {v15}, Lorg/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 474
    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v14, :cond_10

    .line 475
    move-object v14, v0

    move-object v15, v1

    invoke-virtual {v15}, Lorg/apache/xerces/util/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 476
    move-object v14, v0

    move-object v15, v1

    invoke-virtual {v15}, Lorg/apache/xerces/util/URI;->getHost()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 477
    move-object v14, v0

    move-object v15, v1

    invoke-virtual {v15}, Lorg/apache/xerces/util/URI;->getPort()I

    move-result v15

    iput v15, v14, Lorg/apache/xerces/util/URI;->m_port:I

    .line 484
    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_11

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    const-string v15, "/"

    .line 485
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 486
    goto/16 :goto_0

    .line 469
    :cond_f
    goto/16 :goto_0

    .line 480
    :cond_10
    goto/16 :goto_0

    .line 491
    :cond_11
    new-instance v14, Ljava/lang/String;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Ljava/lang/String;-><init>()V

    move-object v10, v14

    .line 492
    .local v10, "path":Ljava/lang/String;
    move-object v14, v1

    invoke-virtual {v14}, Lorg/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    .line 495
    .local v11, "basePath":Ljava/lang/String;
    move-object v14, v11

    if-eqz v14, :cond_12

    .line 496
    move-object v14, v11

    const/16 v15, 0x2f

    invoke-virtual {v14, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    move v12, v14

    .line 497
    .local v12, "lastSlash":I
    move v14, v12

    const/4 v15, -0x1

    if-eq v14, v15, :cond_12

    .line 498
    move-object v14, v11

    const/4 v15, 0x0

    move/from16 v16, v12

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object v10, v14

    .line 503
    .end local v12    # "lastSlash":I
    :cond_12
    move-object v14, v10

    move-object v15, v0

    iget-object v15, v15, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v10, v14

    .line 506
    const/4 v14, -0x1

    move v5, v14

    .line 507
    :goto_3
    move-object v14, v10

    const-string v15, "/./"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    move/from16 v18, v14

    move/from16 v14, v18

    move/from16 v15, v18

    move v5, v15

    const/4 v15, -0x1

    if-eq v14, v15, :cond_13

    .line 508
    move-object v14, v10

    const/4 v15, 0x0

    move/from16 v16, v5

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object v15, v10

    move/from16 v16, v5

    const/16 v17, 0x3

    add-int/lit8 v16, v16, 0x3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v10, v14

    goto :goto_3

    .line 512
    :cond_13
    move-object v14, v10

    const-string v15, "/."

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 513
    move-object v14, v10

    const/4 v15, 0x0

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object v10, v14

    .line 518
    :cond_14
    const/4 v14, 0x1

    move v5, v14

    .line 519
    const/4 v14, -0x1

    move v12, v14

    .line 520
    .local v12, "segIndex":I
    const/4 v14, 0x0

    move-object v13, v14

    .line 522
    .local v13, "tempString":Ljava/lang/String;
    :goto_4
    move-object v14, v10

    const-string v15, "/../"

    move/from16 v16, v5

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    move/from16 v18, v14

    move/from16 v14, v18

    move/from16 v15, v18

    move v5, v15

    if-lez v14, :cond_17

    .line 523
    move-object v14, v10

    const/4 v15, 0x0

    move-object/from16 v16, v10

    const-string v17, "/../"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    .line 524
    move-object v14, v13

    const/16 v15, 0x2f

    invoke-virtual {v14, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    move v12, v14

    .line 525
    move v14, v12

    const/4 v15, -0x1

    if-eq v14, v15, :cond_16

    .line 526
    move-object v14, v13

    move v15, v12

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, ".."

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_15

    .line 527
    move-object v14, v10

    const/4 v15, 0x0

    move/from16 v16, v12

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object v15, v10

    move/from16 v16, v5

    const/16 v17, 0x4

    add-int/lit8 v16, v16, 0x4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v10, v14

    .line 528
    move v14, v12

    move v5, v14

    goto :goto_4

    .line 531
    :cond_15
    add-int/lit8 v5, v5, 0x4

    goto :goto_4

    .line 534
    :cond_16
    add-int/lit8 v5, v5, 0x4

    goto :goto_4

    .line 539
    :cond_17
    move-object v14, v10

    const-string v15, "/.."

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 540
    move-object v14, v10

    const/4 v15, 0x0

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x3

    add-int/lit8 v16, v16, -0x3

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    .line 541
    move-object v14, v13

    const/16 v15, 0x2f

    invoke-virtual {v14, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    move v12, v14

    .line 542
    move v14, v12

    const/4 v15, -0x1

    if-eq v14, v15, :cond_18

    .line 543
    move-object v14, v10

    const/4 v15, 0x0

    move/from16 v16, v12

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object v10, v14

    .line 546
    :cond_18
    move-object v14, v0

    move-object v15, v10

    iput-object v15, v14, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 548
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "basePath":Ljava/lang/String;
    .end local v12    # "segIndex":I
    .end local v13    # "tempString":Ljava/lang/String;
    :cond_19
    goto/16 :goto_0
.end method

.method private initializeAuthority(Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 593
    move-object/from16 v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object/from16 v1, p1

    .local v1, "p_uriSpec":Ljava/lang/String;
    const/4 v11, 0x0

    move v2, v11

    .line 594
    .local v2, "index":I
    const/4 v11, 0x0

    move v3, v11

    .line 595
    .local v3, "start":I
    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v4, v11

    .line 596
    .local v4, "end":I
    const/4 v11, 0x0

    move v5, v11

    .line 597
    .local v5, "testChar":C
    const/4 v11, 0x0

    move-object v6, v11

    .line 600
    .local v6, "userinfo":Ljava/lang/String;
    move-object v11, v1

    const/16 v12, 0x40

    move v13, v3

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    .line 601
    :goto_0
    move v11, v2

    move v12, v4

    if-ge v11, v12, :cond_0

    .line 602
    move-object v11, v1

    move v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v5, v11

    .line 603
    move v11, v5

    const/16 v12, 0x40

    if-ne v11, v12, :cond_3

    .line 604
    .line 608
    :cond_0
    move-object v11, v1

    move v12, v3

    move v13, v2

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 609
    add-int/lit8 v2, v2, 0x1

    .line 613
    :cond_1
    const/4 v11, 0x0

    move-object v7, v11

    .line 614
    .local v7, "host":Ljava/lang/String;
    move v11, v2

    move v3, v11

    .line 615
    :goto_1
    move v11, v2

    move v12, v4

    if-ge v11, v12, :cond_2

    .line 616
    move-object v11, v1

    move v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v5, v11

    .line 617
    move v11, v5

    const/16 v12, 0x3a

    if-ne v11, v12, :cond_4

    .line 618
    .line 622
    :cond_2
    move-object v11, v1

    move v12, v3

    move v13, v2

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 623
    const/4 v11, -0x1

    move v8, v11

    .line 624
    .local v8, "port":I
    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_8

    .line 626
    move v11, v5

    const/16 v12, 0x3a

    if-ne v11, v12, :cond_8

    .line 627
    add-int/lit8 v2, v2, 0x1

    .line 628
    move v11, v2

    move v3, v11

    .line 629
    :goto_2
    move v11, v2

    move v12, v4

    if-ge v11, v12, :cond_5

    .line 630
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 606
    .end local v7    # "host":Ljava/lang/String;
    .end local v8    # "port":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 620
    .restart local v7    # "host":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 632
    .restart local v8    # "port":I
    :cond_5
    move-object v11, v1

    move v12, v3

    move v13, v2

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 633
    .local v9, "portStr":Ljava/lang/String;
    move-object v11, v9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_8

    .line 634
    const/4 v11, 0x0

    move v10, v11

    .local v10, "i":I
    :goto_3
    move v11, v10

    move-object v12, v9

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_7

    .line 635
    move-object v11, v9

    move v12, v10

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lorg/apache/xerces/util/URI;->isDigit(C)Z

    move-result v11

    if-nez v11, :cond_6

    .line 636
    new-instance v11, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is invalid. Port should only contain digits!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 634
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 642
    :cond_7
    move-object v11, v9

    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    move v8, v11

    .line 646
    .line 650
    .end local v9    # "portStr":Ljava/lang/String;
    .end local v10    # "i":I
    :cond_8
    :goto_4
    move-object v11, v0

    move-object v12, v7

    invoke-virtual {v11, v12}, Lorg/apache/xerces/util/URI;->setHost(Ljava/lang/String;)V

    .line 651
    move-object v11, v0

    move v12, v8

    invoke-virtual {v11, v12}, Lorg/apache/xerces/util/URI;->setPort(I)V

    .line 652
    move-object v11, v0

    move-object v12, v6

    invoke-virtual {v11, v12}, Lorg/apache/xerces/util/URI;->setUserinfo(Ljava/lang/String;)V

    .line 653
    return-void

    .line 644
    .restart local v9    # "portStr":Ljava/lang/String;
    .restart local v10    # "i":I
    :catch_0
    move-exception v11

    move-object v10, v11

    goto :goto_4
.end method

.method private initializePath(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 664
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, p1

    .local v1, "p_uriSpec":Ljava/lang/String;
    move-object v6, v1

    if-nez v6, :cond_0

    .line 665
    new-instance v6, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Cannot initialize path from null string!"

    invoke-direct {v7, v8}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 669
    :cond_0
    const/4 v6, 0x0

    move v2, v6

    .line 670
    .local v2, "index":I
    const/4 v6, 0x0

    move v3, v6

    .line 671
    .local v3, "start":I
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v6

    .line 672
    .local v4, "end":I
    const/4 v6, 0x0

    move v5, v6

    .line 675
    .local v5, "testChar":C
    :goto_0
    move v6, v2

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 676
    move-object v6, v1

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    .line 677
    move v6, v5

    const/16 v7, 0x3f

    if-eq v6, v7, :cond_1

    move v6, v5

    const/16 v7, 0x23

    if-ne v6, v7, :cond_5

    .line 678
    .line 696
    :cond_1
    move-object v6, v0

    move-object v7, v1

    move v8, v3

    move v9, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 699
    move v6, v5

    const/16 v7, 0x3f

    if-ne v6, v7, :cond_3

    .line 700
    add-int/lit8 v2, v2, 0x1

    .line 701
    move v6, v2

    move v3, v6

    .line 702
    :goto_1
    move v6, v2

    move v7, v4

    if-ge v6, v7, :cond_2

    .line 703
    move-object v6, v1

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    .line 704
    move v6, v5

    const/16 v7, 0x23

    if-ne v6, v7, :cond_9

    .line 705
    .line 722
    :cond_2
    move-object v6, v0

    move-object v7, v1

    move v8, v3

    move v9, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 726
    :cond_3
    move v6, v5

    const/16 v7, 0x23

    if-ne v6, v7, :cond_10

    .line 727
    add-int/lit8 v2, v2, 0x1

    .line 728
    move v6, v2

    move v3, v6

    .line 729
    :goto_2
    move v6, v2

    move v7, v4

    if-ge v6, v7, :cond_f

    .line 730
    move-object v6, v1

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    .line 732
    move v6, v5

    const/16 v7, 0x25

    if-ne v6, v7, :cond_d

    .line 733
    move v6, v2

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    move v7, v4

    if-ge v6, v7, :cond_4

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 734
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    .line 735
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v6

    if-nez v6, :cond_e

    .line 736
    :cond_4
    new-instance v6, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Fragment contains invalid escape sequence!"

    invoke-direct {v7, v8}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 681
    :cond_5
    move v6, v5

    const/16 v7, 0x25

    if-ne v6, v7, :cond_7

    .line 682
    move v6, v2

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    move v7, v4

    if-ge v6, v7, :cond_6

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 683
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    .line 684
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v6

    if-nez v6, :cond_8

    .line 685
    :cond_6
    new-instance v6, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Path contains invalid escape sequence!"

    invoke-direct {v7, v8}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 689
    :cond_7
    move v6, v5

    invoke-static {v6}, Lorg/apache/xerces/util/URI;->isReservedCharacter(C)Z

    move-result v6

    if-nez v6, :cond_8

    move v6, v5

    .line 690
    invoke-static {v6}, Lorg/apache/xerces/util/URI;->isUnreservedCharacter(C)Z

    move-result v6

    if-nez v6, :cond_8

    .line 691
    new-instance v6, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Path contains invalid character: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 694
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 707
    :cond_9
    move v6, v5

    const/16 v7, 0x25

    if-ne v6, v7, :cond_b

    .line 708
    move v6, v2

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    move v7, v4

    if-ge v6, v7, :cond_a

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 709
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v6

    if-eqz v6, :cond_a

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    .line 710
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v6

    if-nez v6, :cond_c

    .line 711
    :cond_a
    new-instance v6, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Query string contains invalid escape sequence!"

    invoke-direct {v7, v8}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 715
    :cond_b
    move v6, v5

    invoke-static {v6}, Lorg/apache/xerces/util/URI;->isReservedCharacter(C)Z

    move-result v6

    if-nez v6, :cond_c

    move v6, v5

    .line 716
    invoke-static {v6}, Lorg/apache/xerces/util/URI;->isUnreservedCharacter(C)Z

    move-result v6

    if-nez v6, :cond_c

    .line 717
    new-instance v6, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Query string contains invalid character:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 720
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 740
    :cond_d
    move v6, v5

    invoke-static {v6}, Lorg/apache/xerces/util/URI;->isReservedCharacter(C)Z

    move-result v6

    if-nez v6, :cond_e

    move v6, v5

    .line 741
    invoke-static {v6}, Lorg/apache/xerces/util/URI;->isUnreservedCharacter(C)Z

    move-result v6

    if-nez v6, :cond_e

    .line 742
    new-instance v6, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fragment contains invalid character:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 745
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 747
    :cond_f
    move-object v6, v0

    move-object v7, v1

    move v8, v3

    move v9, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 749
    :cond_10
    return-void
.end method

.method private initializeScheme(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, p1

    .local v1, "p_uriSpec":Ljava/lang/String;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v2, v6

    .line 561
    .local v2, "uriSpecLen":I
    const/4 v6, 0x0

    move v3, v6

    .line 562
    .local v3, "index":I
    const/4 v6, 0x0

    move-object v4, v6

    .line 563
    .local v4, "scheme":Ljava/lang/String;
    const/4 v6, 0x0

    move v5, v6

    .line 565
    .local v5, "testChar":C
    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_0

    .line 566
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    .line 567
    move v6, v5

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_0

    move v6, v5

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_0

    move v6, v5

    const/16 v7, 0x3f

    if-eq v6, v7, :cond_0

    move v6, v5

    const/16 v7, 0x23

    if-ne v6, v7, :cond_1

    .line 569
    .line 573
    :cond_0
    move-object v6, v1

    const/4 v7, 0x0

    move v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 575
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 576
    new-instance v6, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "No scheme found in URI."

    invoke-direct {v7, v8}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 571
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 579
    :cond_2
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/URI;->setScheme(Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method private static isAlpha(C)Z
    .locals 3

    .prologue
    .line 1345
    move v0, p0

    .local v0, "p_char":C
    move v1, v0

    const/16 v2, 0x61

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x7a

    if-le v1, v2, :cond_1

    :cond_0
    move v1, v0

    const/16 v2, 0x41

    if-lt v1, v2, :cond_2

    move v1, v0

    const/16 v2, 0x5a

    if-gt v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "p_char":C
    return v0

    .restart local v0    # "p_char":C
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isAlphanum(C)Z
    .locals 2

    .prologue
    .line 1355
    move v0, p0

    .local v0, "p_char":C
    move v1, v0

    invoke-static {v1}, Lorg/apache/xerces/util/URI;->isAlpha(C)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    invoke-static {v1}, Lorg/apache/xerces/util/URI;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "p_char":C
    return v0

    .restart local v0    # "p_char":C
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isConformantSchemeName(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 1216
    move-object v0, p0

    .local v0, "p_scheme":Ljava/lang/String;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1217
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 1233
    .end local v0    # "p_scheme":Ljava/lang/String;
    .local v2, "i":I
    :goto_0
    return v0

    .line 1220
    .end local v2    # "i":I
    .restart local v0    # "p_scheme":Ljava/lang/String;
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xerces/util/URI;->isAlpha(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1221
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 1225
    :cond_2
    const/4 v3, 0x1

    move v2, v3

    .restart local v2    # "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 1226
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v1, v3

    .line 1227
    .local v1, "testChar":C
    move v3, v1

    invoke-static {v3}, Lorg/apache/xerces/util/URI;->isAlphanum(C)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "+-."

    move v4, v1

    .line 1228
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1229
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 1225
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1233
    .end local v1    # "testChar":C
    :cond_4
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method private static isDigit(C)Z
    .locals 3

    .prologue
    .line 1324
    move v0, p0

    .local v0, "p_char":C
    move v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "p_char":C
    return v0

    .restart local v0    # "p_char":C
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isHex(C)Z
    .locals 3

    .prologue
    .line 1334
    move v0, p0

    .local v0, "p_char":C
    move v1, v0

    invoke-static {v1}, Lorg/apache/xerces/util/URI;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    const/16 v2, 0x61

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x66

    if-le v1, v2, :cond_1

    :cond_0
    move v1, v0

    const/16 v2, 0x41

    if-lt v1, v2, :cond_2

    move v1, v0

    const/16 v2, 0x46

    if-gt v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "p_char":C
    return v0

    .restart local v0    # "p_char":C
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isReservedCharacter(C)Z
    .locals 3

    .prologue
    .line 1365
    move v0, p0

    .local v0, "p_char":C
    const-string v1, ";/?:@&=+$,[]"

    move v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "p_char":C
    return v0

    .restart local v0    # "p_char":C
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isURIString(Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 1386
    move-object v0, p0

    .local v0, "p_uric":Ljava/lang/String;
    move-object v4, v0

    if-nez v4, :cond_0

    .line 1387
    const/4 v4, 0x0

    move v0, v4

    .line 1412
    .end local v0    # "p_uric":Ljava/lang/String;
    .local v1, "end":I
    .local v2, "testChar":C
    .local v3, "i":I
    :goto_0
    return v0

    .line 1389
    .end local v1    # "end":I
    .end local v2    # "testChar":C
    .end local v3    # "i":I
    .restart local v0    # "p_uric":Ljava/lang/String;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v4

    .line 1390
    .restart local v1    # "end":I
    const/4 v4, 0x0

    move v2, v4

    .line 1391
    .restart local v2    # "testChar":C
    const/4 v4, 0x0

    move v3, v4

    .restart local v3    # "i":I
    :goto_1
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_6

    .line 1392
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v2, v4

    .line 1393
    move v4, v2

    const/16 v5, 0x25

    if-ne v4, v5, :cond_4

    .line 1394
    move v4, v3

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    move v5, v1

    if-ge v4, v5, :cond_1

    move-object v4, v0

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 1395
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    move v5, v3

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    .line 1396
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1397
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 1400
    :cond_2
    add-int/lit8 v3, v3, 0x2

    .line 1391
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1404
    :cond_4
    move v4, v2

    invoke-static {v4}, Lorg/apache/xerces/util/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v2

    .line 1405
    invoke-static {v4}, Lorg/apache/xerces/util/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1406
    goto :goto_2

    .line 1409
    :cond_5
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 1412
    :cond_6
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method private static isUnreservedCharacter(C)Z
    .locals 3

    .prologue
    .line 1374
    move v0, p0

    .local v0, "p_char":C
    move v1, v0

    invoke-static {v1}, Lorg/apache/xerces/util/URI;->isAlphanum(C)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-_.!~*\'()"

    move v2, v0

    .line 1375
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "p_char":C
    return v0

    .restart local v0    # "p_char":C
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWellFormedAddress(Ljava/lang/String;)Z
    .locals 10

    .prologue
    .line 1248
    move-object v0, p0

    .local v0, "p_address":Ljava/lang/String;
    move-object v7, v0

    if-nez v7, :cond_0

    .line 1249
    const/4 v7, 0x0

    move v0, v7

    .line 1314
    .end local v0    # "p_address":Ljava/lang/String;
    .local v1, "address":Ljava/lang/String;
    .local v2, "addrLength":I
    :goto_0
    return v0

    .line 1252
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "addrLength":I
    .restart local v0    # "p_address":Ljava/lang/String;
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 1253
    .restart local v1    # "address":Ljava/lang/String;
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v2, v7

    .line 1254
    .restart local v2    # "addrLength":I
    move v7, v2

    if-eqz v7, :cond_1

    move v7, v2

    const/16 v8, 0xff

    if-le v7, v8, :cond_2

    .line 1255
    :cond_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 1258
    :cond_2
    move-object v7, v1

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v1

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1259
    :cond_3
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 1265
    :cond_4
    move-object v7, v1

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    move v3, v7

    .line 1266
    .local v3, "index":I
    move-object v7, v1

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1267
    move-object v7, v1

    const/4 v8, 0x0

    move v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    move v3, v7

    .line 1270
    :cond_5
    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v2

    if-ge v7, v8, :cond_c

    move-object v7, v0

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1272
    const/4 v7, 0x0

    move v5, v7

    .line 1277
    .local v5, "numDots":I
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_1
    move v7, v6

    move v8, v2

    if-ge v7, v8, :cond_a

    .line 1278
    move-object v7, v1

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v4, v7

    .line 1279
    .local v4, "testChar":C
    move v7, v4

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_9

    .line 1280
    move-object v7, v1

    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v6

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v2

    if-ge v7, v8, :cond_7

    move-object v7, v1

    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 1281
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1282
    :cond_6
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 1284
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 1277
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1286
    :cond_9
    move v7, v4

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1287
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 1290
    .end local v4    # "testChar":C
    :cond_a
    move v7, v5

    const/4 v8, 0x3

    if-eq v7, v8, :cond_b

    .line 1291
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 1293
    .line 1314
    .end local v5    # "numDots":I
    .end local v6    # "i":I
    :cond_b
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 1299
    :cond_c
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_2
    move v7, v5

    move v8, v2

    if-ge v7, v8, :cond_b

    .line 1300
    move-object v7, v1

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v4, v7

    .line 1301
    .restart local v4    # "testChar":C
    move v7, v4

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_e

    .line 1302
    move-object v7, v1

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isAlphanum(C)Z

    move-result v7

    if-nez v7, :cond_d

    .line 1303
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 1305
    :cond_d
    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v2

    if-ge v7, v8, :cond_f

    move-object v7, v1

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isAlphanum(C)Z

    move-result v7

    if-nez v7, :cond_f

    .line 1306
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 1309
    :cond_e
    move v7, v4

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isAlphanum(C)Z

    move-result v7

    if-nez v7, :cond_f

    move v7, v4

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_f

    .line 1310
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 1299
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method


# virtual methods
.method public appendPath(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1044
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, p1

    .local v1, "p_addToPath":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1045
    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    move-object v2, v1

    invoke-static {v2}, Lorg/apache/xerces/util/URI;->isURIString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1049
    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Path contains invalid character!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1053
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 1054
    :cond_3
    move-object v2, v1

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1055
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 1077
    :goto_1
    goto :goto_0

    .line 1058
    :cond_4
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_1

    .line 1061
    :cond_5
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1062
    move-object v2, v1

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1063
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_1

    .line 1066
    :cond_6
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_1

    .line 1070
    :cond_7
    move-object v2, v1

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1071
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_1

    .line 1074
    :cond_8
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 1152
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, p1

    .local v1, "p_test":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lorg/apache/xerces/util/URI;

    if-eqz v3, :cond_c

    .line 1153
    move-object v3, v1

    check-cast v3, Lorg/apache/xerces/util/URI;

    move-object v2, v3

    .line 1154
    .local v2, "testURI":Lorg/apache/xerces/util/URI;
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 1156
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-nez v3, :cond_2

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v3, :cond_3

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 1159
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v3, :cond_4

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v3, :cond_5

    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 1162
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_5
    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/URI;->m_port:I

    move-object v4, v2

    iget v4, v4, Lorg/apache/xerces/util/URI;->m_port:I

    if-ne v3, v4, :cond_c

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-nez v3, :cond_6

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v3, :cond_7

    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 1166
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_7
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-nez v3, :cond_8

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v3, :cond_9

    :cond_8
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 1169
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_9
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-nez v3, :cond_a

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v3, :cond_b

    :cond_a
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 1172
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1173
    :cond_b
    const/4 v3, 0x1

    move v0, v3

    .line 1176
    .end local v0    # "this":Lorg/apache/xerces/util/URI;
    .end local v2    # "testURI":Lorg/apache/xerces/util/URI;
    :goto_0
    return v0

    .restart local v0    # "this":Lorg/apache/xerces/util/URI;
    :cond_c
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 2

    .prologue
    .line 890
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/URI;
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 819
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/URI;
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 868
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/URI;
    return-object v0
.end method

.method public getPath(ZZ)Ljava/lang/String;
    .locals 8

    .prologue
    .line 847
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move v1, p1

    .local v1, "p_includeQueryString":Z
    move v2, p2

    .local v2, "p_includeFragment":Z
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 849
    .local v3, "pathString":Ljava/lang/StringBuffer;
    move v4, v1

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 850
    move-object v4, v3

    const/16 v5, 0x3f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 851
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 854
    :cond_0
    move v4, v2

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 855
    move-object v4, v3

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 856
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 858
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lorg/apache/xerces/util/URI;
    return-object v0
.end method

.method public getPort()I
    .locals 2

    .prologue
    .line 828
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/URI;->m_port:I

    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/URI;
    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 879
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/URI;
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 2

    .prologue
    .line 757
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/URI;
    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 5

    .prologue
    .line 767
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 769
    .local v1, "schemespec":Ljava/lang/StringBuffer;
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/URI;->m_port:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 770
    :cond_0
    move-object v2, v1

    const-string v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 773
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 774
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 775
    move-object v2, v1

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 778
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 779
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 782
    :cond_3
    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/URI;->m_port:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 783
    move-object v2, v1

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 784
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/URI;->m_port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 787
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 788
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 791
    :cond_5
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 792
    move-object v2, v1

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 793
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 796
    :cond_6
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 797
    move-object v2, v1

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 798
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 801
    :cond_7
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/URI;
    return-object v0
.end method

.method public getUserinfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 810
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/URI;
    return-object v0
.end method

.method public isGenericURI()Z
    .locals 2

    .prologue
    .line 1205
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/URI;
    return v0

    .restart local v0    # "this":Lorg/apache/xerces/util/URI;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1123
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, p1

    .local v1, "p_fragment":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 1124
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 1141
    :goto_0
    return-void

    .line 1126
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/util/URI;->isGenericURI()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1127
    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Fragment can only be set for a generic URI!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1130
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1131
    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Fragment cannot be set when path is null!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1134
    :cond_2
    move-object v2, v1

    invoke-static {v2}, Lorg/apache/xerces/util/URI;->isURIString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1135
    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Fragment contains invalid character!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1139
    :cond_3
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 969
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, p1

    .local v1, "p_host":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 970
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 971
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 972
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lorg/apache/xerces/util/URI;->m_port:I

    .line 977
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 978
    return-void

    .line 974
    :cond_2
    move-object v2, v1

    invoke-static {v2}, Lorg/apache/xerces/util/URI;->isWellFormedAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 975
    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Host is not a well formed address!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1019
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, p1

    .local v1, "p_path":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 1020
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 1021
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 1022
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 1027
    :goto_0
    return-void

    .line 1025
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/URI;->initializePath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPort(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 992
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move v1, p1

    .local v1, "p_port":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    const v3, 0xffff

    if-gt v2, v3, :cond_0

    .line 993
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 994
    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Port cannot be set when host is null!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 998
    :cond_0
    move v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 999
    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Invalid port number!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1001
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/apache/xerces/util/URI;->m_port:I

    .line 1002
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1091
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, p1

    .local v1, "p_queryString":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 1092
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 1109
    :goto_0
    return-void

    .line 1094
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/util/URI;->isGenericURI()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1095
    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Query string can only be set for a generic URI!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1098
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1099
    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Query string cannot be set when path is null!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1102
    :cond_2
    move-object v2, v1

    invoke-static {v2}, Lorg/apache/xerces/util/URI;->isURIString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1103
    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Query string contains invalid character!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1107
    :cond_3
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    goto :goto_0
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 903
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, p1

    .local v1, "p_scheme":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 904
    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cannot set scheme from null string!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 907
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lorg/apache/xerces/util/URI;->isConformantSchemeName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 908
    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "The scheme is not conformant."

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 911
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 912
    return-void
.end method

.method public setUserinfo(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 924
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    move-object v1, p1

    .local v1, "p_userinfo":Ljava/lang/String;
    move-object v5, v1

    if-nez v5, :cond_1

    .line 925
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 956
    :cond_0
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 957
    return-void

    .line 928
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 929
    new-instance v5, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "Userinfo cannot be set when host is null!"

    invoke-direct {v6, v7}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 935
    :cond_2
    const/4 v5, 0x0

    move v2, v5

    .line 936
    .local v2, "index":I
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    .line 937
    .local v3, "end":I
    const/4 v5, 0x0

    move v4, v5

    .line 938
    .local v4, "testChar":C
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 939
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    .line 940
    move v5, v4

    const/16 v6, 0x25

    if-ne v5, v6, :cond_4

    .line 941
    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    move v6, v3

    if-ge v5, v6, :cond_3

    move-object v5, v1

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 942
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v1

    move v6, v2

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    .line 943
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v5

    if-nez v5, :cond_5

    .line 944
    :cond_3
    new-instance v5, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "Userinfo contains invalid escape sequence!"

    invoke-direct {v6, v7}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 948
    :cond_4
    move v5, v4

    invoke-static {v5}, Lorg/apache/xerces/util/URI;->isUnreservedCharacter(C)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, ";:&=+$,"

    move v6, v4

    .line 949
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 950
    new-instance v5, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Userinfo contains invalid character:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 953
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1185
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/URI;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 1187
    .local v1, "uriSpecString":Ljava/lang/StringBuffer;
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1188
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1189
    move-object v2, v1

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1191
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/util/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1192
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/URI;
    return-object v0
.end method
