.class public final Ljavafx/animation/KeyValue;
.super Ljava/lang/Object;
.source "KeyValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/animation/KeyValue$Type;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_INTERPOLATOR:Ljavafx/animation/Interpolator;


# instance fields
.field private final endValue:Ljava/lang/Object;

.field private final interpolator:Ljavafx/animation/Interpolator;

.field private final target:Ljavafx/beans/value/WritableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/WritableValue",
            "<*>;"
        }
    .end annotation
.end field

.field private final type:Ljavafx/animation/KeyValue$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Ljavafx/animation/KeyValue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/animation/KeyValue;->$assertionsDisabled:Z

    .line 65
    sget-object v0, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    sput-object v0, Ljavafx/animation/KeyValue;->DEFAULT_INTERPOLATOR:Ljavafx/animation/Interpolator;

    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V
    .locals 7
    .param p1    # Ljavafx/beans/value/WritableValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "target"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "endValue"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/beans/value/WritableValue",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyValue;
    move-object v1, p1

    .local v1, "target":Ljavafx/beans/value/WritableValue;, "Ljavafx/beans/value/WritableValue<TT;>;"
    move-object v2, p2

    .local v2, "endValue":Ljava/lang/Object;, "TT;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget-object v6, Ljavafx/animation/KeyValue;->DEFAULT_INTERPOLATOR:Ljavafx/animation/Interpolator;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V
    .locals 8
    .param p1    # Ljavafx/beans/value/WritableValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "target"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "endValue"
        .end annotation
    .end param
    .param p3    # Ljavafx/animation/Interpolator;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "interpolator"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/beans/value/WritableValue",
            "<TT;>;TT;",
            "Ljavafx/animation/Interpolator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyValue;
    move-object v1, p1

    .local v1, "target":Ljavafx/beans/value/WritableValue;, "Ljavafx/beans/value/WritableValue<TT;>;"
    move-object v2, p2

    .local v2, "endValue":Ljava/lang/Object;, "TT;"
    move-object v3, p3

    .local v3, "interpolator":Ljavafx/animation/Interpolator;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 134
    move-object v4, v1

    if-nez v4, :cond_0

    .line 135
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Target needs to be specified"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    :cond_0
    move-object v4, v3

    if-nez v4, :cond_1

    .line 138
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Interpolator needs to be specified"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 141
    :cond_1
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/animation/KeyValue;->target:Ljavafx/beans/value/WritableValue;

    .line 142
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/animation/KeyValue;->endValue:Ljava/lang/Object;

    .line 143
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/animation/KeyValue;->interpolator:Ljavafx/animation/Interpolator;

    .line 144
    move-object v4, v0

    move-object v5, v1

    instance-of v5, v5, Ljavafx/beans/value/WritableNumberValue;

    if-eqz v5, :cond_6

    move-object v5, v1

    instance-of v5, v5, Ljavafx/beans/value/WritableDoubleValue;

    if-eqz v5, :cond_2

    sget-object v5, Ljavafx/animation/KeyValue$Type;->DOUBLE:Ljavafx/animation/KeyValue$Type;

    :goto_0
    iput-object v5, v4, Ljavafx/animation/KeyValue;->type:Ljavafx/animation/KeyValue$Type;

    .line 151
    return-void

    .line 144
    :cond_2
    move-object v5, v1

    instance-of v5, v5, Ljavafx/beans/value/WritableIntegerValue;

    if-eqz v5, :cond_3

    sget-object v5, Ljavafx/animation/KeyValue$Type;->INTEGER:Ljavafx/animation/KeyValue$Type;

    goto :goto_0

    :cond_3
    move-object v5, v1

    instance-of v5, v5, Ljavafx/beans/value/WritableFloatValue;

    if-eqz v5, :cond_4

    sget-object v5, Ljavafx/animation/KeyValue$Type;->FLOAT:Ljavafx/animation/KeyValue$Type;

    goto :goto_0

    :cond_4
    move-object v5, v1

    instance-of v5, v5, Ljavafx/beans/value/WritableLongValue;

    if-eqz v5, :cond_5

    sget-object v5, Ljavafx/animation/KeyValue$Type;->LONG:Ljavafx/animation/KeyValue$Type;

    goto :goto_0

    :cond_5
    sget-object v5, Ljavafx/animation/KeyValue$Type;->OBJECT:Ljavafx/animation/KeyValue$Type;

    goto :goto_0

    :cond_6
    move-object v5, v1

    instance-of v5, v5, Ljavafx/beans/value/WritableBooleanValue;

    if-eqz v5, :cond_7

    sget-object v5, Ljavafx/animation/KeyValue$Type;->BOOLEAN:Ljavafx/animation/KeyValue$Type;

    goto :goto_0

    :cond_7
    sget-object v5, Ljavafx/animation/KeyValue$Type;->OBJECT:Ljavafx/animation/KeyValue$Type;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyValue;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 202
    const/4 v3, 0x1

    move v0, v3

    .line 214
    .end local v0    # "this":Ljavafx/animation/KeyValue;
    :goto_0
    return v0

    .line 204
    .restart local v0    # "this":Ljavafx/animation/KeyValue;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljavafx/animation/KeyValue;

    if-eqz v3, :cond_6

    .line 205
    move-object v3, v1

    check-cast v3, Ljavafx/animation/KeyValue;

    move-object v2, v3

    .line 206
    .local v2, "keyValue":Ljavafx/animation/KeyValue;
    sget-boolean v3, Ljavafx/animation/KeyValue;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/KeyValue;->target:Ljavafx/beans/value/WritableValue;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/KeyValue;->interpolator:Ljavafx/animation/Interpolator;

    if-eqz v3, :cond_1

    move-object v3, v2

    iget-object v3, v3, Ljavafx/animation/KeyValue;->target:Ljavafx/beans/value/WritableValue;

    if-eqz v3, :cond_1

    move-object v3, v2

    iget-object v3, v3, Ljavafx/animation/KeyValue;->interpolator:Ljavafx/animation/Interpolator;

    if-nez v3, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 209
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/KeyValue;->target:Ljavafx/beans/value/WritableValue;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/animation/KeyValue;->target:Ljavafx/beans/value/WritableValue;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/KeyValue;->endValue:Ljava/lang/Object;

    if-nez v3, :cond_4

    move-object v3, v2

    iget-object v3, v3, Ljavafx/animation/KeyValue;->endValue:Ljava/lang/Object;

    if-nez v3, :cond_5

    .line 211
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/KeyValue;->interpolator:Ljavafx/animation/Interpolator;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/animation/KeyValue;->interpolator:Ljavafx/animation/Interpolator;

    .line 212
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    .line 209
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/KeyValue;->endValue:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/animation/KeyValue;->endValue:Ljava/lang/Object;

    .line 211
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 212
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 214
    .end local v2    # "keyValue":Ljavafx/animation/KeyValue;
    :cond_6
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getEndValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyValue;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/KeyValue;->endValue:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/KeyValue;
    return-object v0
.end method

.method public getInterpolator()Ljavafx/animation/Interpolator;
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyValue;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/KeyValue;->interpolator:Ljavafx/animation/Interpolator;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/KeyValue;
    return-object v0
.end method

.method public getTarget()Ljavafx/beans/value/WritableValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/value/WritableValue",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyValue;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/KeyValue;->target:Ljavafx/beans/value/WritableValue;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/KeyValue;
    return-object v0
.end method

.method public getType()Ljavafx/animation/KeyValue$Type;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyValue;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/KeyValue;->type:Ljavafx/animation/KeyValue$Type;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/KeyValue;
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyValue;
    sget-boolean v3, Ljavafx/animation/KeyValue;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/KeyValue;->target:Ljavafx/beans/value/WritableValue;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/KeyValue;->interpolator:Ljavafx/animation/Interpolator;

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 184
    :cond_1
    const/16 v3, 0x1f

    move v1, v3

    .line 185
    .local v1, "prime":I
    const/4 v3, 0x1

    move v2, v3

    .line 186
    .local v2, "result":I
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/KeyValue;->target:Ljavafx/beans/value/WritableValue;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    move v2, v3

    .line 187
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/KeyValue;->endValue:Ljava/lang/Object;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    .line 188
    :goto_0
    add-int/2addr v3, v4

    move v2, v3

    .line 189
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/KeyValue;->interpolator:Ljavafx/animation/Interpolator;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    move v2, v3

    .line 190
    move v3, v2

    move v0, v3

    .end local v0    # "this":Ljavafx/animation/KeyValue;
    return v0

    .line 187
    .restart local v0    # "this":Ljavafx/animation/KeyValue;
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/KeyValue;->endValue:Ljava/lang/Object;

    .line 188
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyValue;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyValue [target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/KeyValue;->target:Ljavafx/beans/value/WritableValue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", endValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/KeyValue;->endValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", interpolator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/KeyValue;->interpolator:Ljavafx/animation/Interpolator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/KeyValue;
    return-object v0
.end method
