# test code
data(mtcars)
head(mtcars)
summary(mtcars)

# ggplot2 패키지 설치
if (!require(ggplot2)) install.packages("ggplot2")

# 마력에 따른 연비 시각화
library(ggplot2)
ggplot(mtcars, aes(x=hp, y=mpg)) +
  geom_point() +
  geom_smooth(method='lm', col="blue") +
  labs(title="마력에 따른 연비", x="마력 (HP)", y="연비 (MPG)")

# 선형 회귀 모델 생성 및 요약
fit <- lm(mpg ~ hp, data=mtcars)
summary(fit)
