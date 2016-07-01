.class final Ljava/time/ZoneRegion;
.super Ljava/time/ZoneId;
.source "ZoneRegion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x746262147bb70e18L


# instance fields
.field private final id:Ljava/lang/String;

.field private final transient rules:Ljava/time/bp/zone/ZoneRules;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "[A-Za-z][A-Za-z0-9~/._+-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/time/ZoneRegion;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;)V
    .locals 5

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneRegion;
    move-object v1, p1

    .local v1, "id":Ljava/lang/String;
    move-object v2, p2

    .local v2, "rules":Ljava/time/bp/zone/ZoneRules;
    move-object v3, v0

    invoke-direct {v3}, Ljava/time/ZoneId;-><init>()V

    .line 163
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljava/time/ZoneRegion;->id:Ljava/lang/String;

    .line 164
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljava/time/ZoneRegion;->rules:Ljava/time/bp/zone/ZoneRules;

    .line 165
    return-void
.end method

.method static ofId(Ljava/lang/String;Z)Ljava/time/ZoneRegion;
    .locals 9

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "zoneId":Ljava/lang/String;
    move v1, p1

    .local v1, "checkAvailable":Z
    move-object v4, v0

    const-string v5, "zoneId"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 137
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    sget-object v4, Ljava/time/ZoneRegion;->PATTERN:Ljava/util/regex/Pattern;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    .line 138
    :cond_0
    new-instance v4, Ljava/time/DateTimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid ID for region-based ZoneId, invalid format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 140
    :cond_1
    const/4 v4, 0x0

    move-object v2, v4

    .line 143
    .local v2, "rules":Ljava/time/bp/zone/ZoneRules;
    move-object v4, v0

    const/4 v5, 0x1

    :try_start_0
    invoke-static {v4, v5}, Ljava/time/bp/zone/ZoneRulesProvider;->getRules(Ljava/lang/String;Z)Ljava/time/bp/zone/ZoneRules;
    :try_end_0
    .catch Ljava/time/bp/zone/ZoneRulesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .line 151
    .line 152
    :cond_2
    :goto_0
    new-instance v4, Ljava/time/ZoneRegion;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Ljava/time/ZoneRegion;-><init>(Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;)V

    move-object v0, v4

    .end local v0    # "zoneId":Ljava/lang/String;
    return-object v0

    .line 144
    .restart local v0    # "zoneId":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 146
    .local v3, "ex":Ljava/time/bp/zone/ZoneRulesException;
    move-object v4, v0

    const-string v5, "GMT0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 147
    sget-object v4, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {v4}, Ljava/time/ZoneOffset;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    .line 148
    :cond_3
    move v4, v1

    if-eqz v4, :cond_2

    .line 149
    move-object v4, v3

    throw v4
.end method

.method private static ofLenient(Ljava/lang/String;)Ljava/time/ZoneRegion;
    .locals 9

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "zoneId":Ljava/lang/String;
    move-object v2, v0

    const-string v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    :cond_0
    new-instance v2, Ljava/time/DateTimeException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid ID for region-based ZoneId, invalid format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_1
    move-object v2, v0

    const-string v3, "UTC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v0

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v0

    const-string v3, "UT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    :cond_2
    new-instance v2, Ljava/time/ZoneRegion;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    sget-object v5, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/time/ZoneRegion;-><init>(Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;)V

    move-object v0, v2

    .line 123
    .end local v0    # "zoneId":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 108
    .restart local v0    # "zoneId":Ljava/lang/String;
    :cond_3
    move-object v2, v0

    const-string v3, "UTC+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object v2, v0

    const-string v3, "GMT+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object v2, v0

    const-string v3, "UTC-"

    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object v2, v0

    const-string v3, "GMT-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 110
    :cond_4
    move-object v2, v0

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/time/ZoneOffset;->of(Ljava/lang/String;)Ljava/time/ZoneOffset;

    move-result-object v2

    move-object v1, v2

    .line 111
    .local v1, "offset":Ljava/time/ZoneOffset;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    if-nez v2, :cond_5

    .line 112
    new-instance v2, Ljava/time/ZoneRegion;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/time/ZoneRegion;-><init>(Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;)V

    move-object v0, v2

    goto :goto_0

    .line 114
    :cond_5
    new-instance v2, Ljava/time/ZoneRegion;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/time/ZoneRegion;-><init>(Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;)V

    move-object v0, v2

    goto :goto_0

    .line 116
    .end local v1    # "offset":Ljava/time/ZoneOffset;
    :cond_6
    move-object v2, v0

    const-string v3, "UT+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object v2, v0

    const-string v3, "UT-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 117
    :cond_7
    move-object v2, v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/time/ZoneOffset;->of(Ljava/lang/String;)Ljava/time/ZoneOffset;

    move-result-object v2

    move-object v1, v2

    .line 118
    .restart local v1    # "offset":Ljava/time/ZoneOffset;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    if-nez v2, :cond_8

    .line 119
    new-instance v2, Ljava/time/ZoneRegion;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "UT"

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/time/ZoneRegion;-><init>(Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;)V

    move-object v0, v2

    goto/16 :goto_0

    .line 121
    :cond_8
    new-instance v2, Ljava/time/ZoneRegion;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/time/ZoneRegion;-><init>(Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;)V

    move-object v0, v2

    goto/16 :goto_0

    .line 123
    .end local v1    # "offset":Ljava/time/ZoneOffset;
    :cond_9
    move-object v2, v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/time/ZoneRegion;->ofId(Ljava/lang/String;Z)Ljava/time/ZoneRegion;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/ZoneId;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v2, v0

    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 206
    .local v1, "id":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Ljava/time/ZoneRegion;->ofLenient(Ljava/lang/String;)Ljava/time/ZoneRegion;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "in":Ljava/io/DataInput;
    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneRegion;
    new-instance v1, Ljava/io/InvalidObjectException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Deserialization via serialization delegate"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneRegion;
    new-instance v1, Ljava/time/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x7

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZoneRegion;
    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneRegion;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZoneRegion;->id:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZoneRegion;
    return-object v0
.end method

.method public getRules()Ljava/time/bp/zone/ZoneRules;
    .locals 3

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneRegion;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZoneRegion;->rules:Ljava/time/bp/zone/ZoneRules;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZoneRegion;->rules:Ljava/time/bp/zone/ZoneRules;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZoneRegion;
    return-object v0

    .restart local v0    # "this":Ljava/time/ZoneRegion;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZoneRegion;->id:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/time/bp/zone/ZoneRulesProvider;->getRules(Ljava/lang/String;Z)Ljava/time/bp/zone/ZoneRules;

    move-result-object v1

    goto :goto_0
.end method

.method write(Ljava/io/DataOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneRegion;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v2, v1

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 197
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/ZoneRegion;->writeExternal(Ljava/io/DataOutput;)V

    .line 198
    return-void
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneRegion;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZoneRegion;->id:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 202
    return-void
.end method
